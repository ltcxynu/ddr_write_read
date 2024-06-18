`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/14 20:04:56
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//仿真说明：先产生1920*1080*8/64笔数据，每笔64bit。不�??定每拍都给�?? �??259200 
//debug过程中发现，读取�?? 会有读取到数据比读地�??慢的情况。因此�?�虑做完读后�??50cycle来等待写完？大概�??50*8=400像素不到半行

module top(
    input clk_in1_p,
    input clk_in1_n,
    input reset
);
(*mark_debug= "true"*)reg [19:0] counter_write_line; //标志当前数据位置   
(*mark_debug= "true"*)reg [19:0] counter_read_line; //标志当前数据位置   
(*mark_debug= "true"*)reg [63:0] data_trans2ddr;
(*mark_debug= "true"*)reg [4:0]  data_counter;
wire [64*16-1:0] data_trans2ddr_pp16;
wire [64*16-1:0] ddr_out;
(*mark_debug= "true"*)reg write_data_valid;
(*mark_debug= "true"*)reg read_data_valid;
(*mark_debug= "true"*)reg init_DDR_WR;
(*mark_debug= "true"*)wire data_outvalid;
wire rstn;
wire clk_100M;
wire clk_200M;
wire clk_300M;
wire clk_400M;
wire clk_600M;
(*mark_debug= "true"*)wire Trans_done;
wire vio_resetn;
vio_0 virtual_IO (
  .clk(clk_100M),                // input wire clk
  .probe_out0(vio_resetn)  // output wire [0 : 0] probe_out0
);
// on board
// assign rstn = ~reset && vio_resetn;
// on sim
assign rstn = ~reset && 1;
  clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(clk_100M),     // output clk_out1
    .clk_out2(clk_200M),     // output clk_out2
    .clk_out3(clk_300M),     // output clk_out3
    .clk_out4(clk_400M),     // output clk_out4
    .clk_out5(clk_600M),     // output clk_out4
    // Status and control signals
    .reset(reset), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1_p(clk_in1_p),    // input clk_in1_p
    .clk_in1_n(clk_in1_n));    // input clk_in1_n


//产生随机�?? 以模拟随机拉高拉�?? 数据有效信号
reg [19:0] random_gen;
always@(posedge clk_100M)begin
    if(!rstn)begin
        random_gen <= 'hf7a87;
    end else begin
        random_gen <= {~random_gen[2:0],random_gen[19:3]};
    end
end
//用随机信号来产生随机有效�?? 64bit数据对应的有效信号，注意�??1024bit的有效不是一个东�??
//根据数据有效信号（random_gen%3 == 0�?? 和计数器 产生64bit信号
(*mark_debug= "true"*)reg write_done;
(*mark_debug= "true"*)wire axi_write_done;
(*mark_debug= "true"*)reg  read_done;
(*mark_debug= "true"*)reg [3:0] STATE_W_R_IDLE;
reg [3:0] STATE_W_R_IDLE_next;
reg data_outvalid_ff2,data_outvalid_ff1;
reg axi_write_done_ff2,axi_write_done_ff1;
localparam IDLE = 4'b0001;
localparam WRITE = 4'b0011;
localparam READ = 4'b0010;
localparam DONE = 4'b0110;
always @( * ) begin
    if(~rstn) begin
        STATE_W_R_IDLE_next <= IDLE;
    end else begin
        case(STATE_W_R_IDLE)
            IDLE  : STATE_W_R_IDLE_next <= WRITE;
            WRITE : STATE_W_R_IDLE_next <= write_done?  READ : WRITE;
            READ  : STATE_W_R_IDLE_next <= read_done ?  DONE : READ;
            DONE  : STATE_W_R_IDLE_next <= IDLE;
        endcase
    end
end
always @( posedge clk_100M ) begin
    if(~rstn) begin
        STATE_W_R_IDLE <= IDLE;
    end else begin
        STATE_W_R_IDLE <= STATE_W_R_IDLE_next;
    end
end
always @( posedge clk_100M ) begin
    if(~rstn) begin
        //
        data_trans2ddr <= {16{4'hF}};
        counter_write_line <= 'd0;
        counter_read_line  <= 'd0;
        read_done  <= 0;
        write_done <= 0;
        init_DDR_WR <= 0;
        write_data_valid <= 0;
        read_data_valid  <= 0;
    end else begin
        case(STATE_W_R_IDLE)
            IDLE  : begin
                counter_write_line <= 'd0;
                counter_read_line  <= 'd0;
                read_done  <= 0;
                write_done <= 0;
                data_trans2ddr <= 'd0;
                init_DDR_WR <= 'd1;
                write_data_valid <= 0;
                read_data_valid  <= 0;
            end
            WRITE : begin
                init_DDR_WR <= 'd0;
                if(counter_write_line == 1920*1080/8/16) begin
                    write_done <= 1;
                end else if(axi_write_done_ff2) begin
                    counter_write_line <= counter_write_line + 1;
                    write_data_valid <= 1;
                    data_trans2ddr <= data_trans2ddr + 1;
                end else if(counter_write_line == 0 && write_data_valid != 1) begin
                    write_data_valid <= 1;
                end
    
            end
            READ  : begin
                if(counter_read_line == 1920*1080/8/16) begin
                    read_done <= 1;
                    read_data_valid <= 0;
                end else if(data_outvalid_ff2)   begin
                    counter_read_line <= counter_read_line + 1;
                    read_data_valid <= 1;  
                end else if(counter_read_line == 0) begin
                    read_data_valid <= 1; 
                end 
            end
            DONE  : begin

            end           
        endcase
    end
end
assign data_trans2ddr_pp16 = {16{data_trans2ddr}};
//注意读数据使能后，数据要隔一段时间才能回来，建议做好提前读取的准备来�?? 要做差数据对�??
//虚拟wrapper，用以板级debug on board
// axi_ddr_mpsoc_wrapper mpsoc_wrapper (
//     .axi_m_aclk_300M    (clk_200M),
//     .axi_m_aresetn      (rstn),
//     .axi_m_init         (init_DDR_WR),
//     .data_valid         (data_outvalid),
//     .read_data          (ddr_out),
//     .read_data_valid    (read_data_valid),
//     .write_data         (data_trans2ddr_pp16),
//     .write_data_valid   (write_data_valid),
//     .Trans_done_0       (Trans_done),
//     .write_done_0       (axi_write_done)
// );
//虚拟wrapper，用以仿真 sim ddr驱动
verify_write_read_wrapper wrapper(
    .axi_m_aclk_0        (clk_200M),            //输入时钟。随便给频率，无�??�??
    .axi_m_aresetn_0     (rstn),                //低电平复�??
    .axi_m_init_axi_txn_0(init_DDR_WR),//当一�??始快凑够�??次burst数据时，拉高状�?�复位信号�??
    .write_data_0        (data_trans2ddr_pp16), //�??1024
    .write_data_valid_0  (write_data_valid),    //写数据使�??
    .data_valid_0        (data_outvalid),             //读数�??
    .read_data_0         (ddr_out),       //读数据有�??
    .read_data_valid_0   (read_data_valid),      //读数据使�??
    .Trans_done_0        (Trans_done),
    .write_done_0        (axi_write_done)
);
always@(posedge clk_200M) begin
    if(!rstn) begin
        data_outvalid_ff1 <= 0;
    end else begin
        if(data_outvalid)
            data_outvalid_ff1 <= 1;
        else if(data_outvalid_ff2)begin
            data_outvalid_ff1 <= 0;
        end    
    end
end

always@(posedge clk_100M) begin
    if(!rstn) begin
        data_outvalid_ff2 <= 0;
    end else begin
        data_outvalid_ff2 <= data_outvalid_ff1;
    end
end
always@(posedge clk_200M) begin
    if(!rstn) begin
        axi_write_done_ff1 <= 0;
    end else begin
        if(axi_write_done)
            axi_write_done_ff1 <= 1;
        else if(axi_write_done_ff2)begin
            axi_write_done_ff1 <= 0;
        end    
    end
end

always@(posedge clk_100M) begin
    if(!rstn) begin
        axi_write_done_ff2 <= 0;
    end else begin
        axi_write_done_ff2 <= axi_write_done_ff1;
    end
end


endmodule