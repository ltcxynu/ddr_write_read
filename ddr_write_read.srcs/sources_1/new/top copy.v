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
//仿真说明：先产生1920*1080*8/64笔数据，每笔64bit。不�?定每拍都给�?? �?259200 
//debug过程中发现，读取�? 会有读取到数据比读地�?慢的情况。因此�?�虑做完读后�?50cycle来等待写完？大概�?50*8=400像素不到半行

module top(
    input clk_in1_p,
    input clk_in1_n,
    input reset
);
reg [19:0] data_counter; //标志当前数据位置   
reg [63:0] data_trans2ddr;
reg [64*16-1:0] data_trans2ddr_pp16;
wire [64*16-1:0] ddr_out;
reg        data_valid;
reg write_data_valid;
reg read_data_valid;
wire data_outvalid;
wire rstn;
wire clk_100M;
wire clk_200M;
wire clk_300M;
wire clk_400M;
wire clk_600M;
wire Trans_done;
wire vio_resetn;
vio_0 virtual_IO (
  .clk(clk_100M),                // input wire clk
  .probe_out0(vio_resetn)  // output wire [0 : 0] probe_out0
);
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


//产生随机�? 以模拟随机拉高拉�? 数据有效信号
reg [19:0] random_gen;
always@(posedge clk_100M)begin
    if(!rstn)begin
        random_gen <= 'hf7a87;
    end else begin
        random_gen <= {~random_gen[2:0],random_gen[19:3]};
    end
end
//用随机信号来产生随机有效�? 64bit数据对应的有效信号，注意�?1024bit的有效不是一个东�?
//根据数据有效信号（random_gen%3 == 0�? 和计数器 产生64bit信号
always@(posedge clk_100M)begin
    if(!rstn)begin
        data_counter   <= 'd0;
        data_trans2ddr <= 'd0;
        data_valid     <= 'd0;

    end else if(data_counter != 518400  && (random_gen%3 == 0) )begin
        data_counter <= data_counter + 'd1;
        data_trans2ddr <= {44'd0,data_counter};
        data_valid <= 'd1;

    end else if(data_counter == 518400 && Trans_done  && (random_gen%3 == 0) )begin
        data_counter <= 'd0;
        data_trans2ddr <= {44'd0,data_counter};
        data_valid <= 'd0;

    end else begin
        data_counter <= data_counter;
        data_trans2ddr <= data_trans2ddr;
        data_valid <= 'd0;        
    end
end    
//�?64bit信号拼成可以满足�?组burst_len=16的信号，然后送给读写ddr模块满足�?次burst�?
reg [3:0] cnt;
always@(posedge clk_100M)begin
    if(!rstn)begin
        data_trans2ddr_pp16 <= 'd0;
        cnt <= 'd0;
        write_data_valid <= 0;
    end else if(data_valid)begin
        if(cnt == 'd15) begin
            cnt <= 'd0;
            write_data_valid <= 1;
        end else begin
            cnt <= cnt + 'd1;
            write_data_valid <= 0;
        end
        data_trans2ddr_pp16 <= {data_trans2ddr_pp16[15*64-1:0], data_trans2ddr};
    end else begin
        write_data_valid <= 0;
    end
end

//注意读数据使能后，数据要隔一段时间才能回来，建议做好提前读取的准备来�? 要做差数据对�?
//虚拟wrapper，用以板级调�?
// axi_ddr_mpsoc_wrapper mpsoc_wrapper (
//     .axi_m_aclk_300M    (clk_300M),
//     .axi_m_aresetn      (rstn),
//     .axi_m_init         (data_counter == 'd14),
//     .data_valid         (data_outvalid),
//     .read_data          (ddr_out),
//     .read_data_valid    (1),
//     .write_data         (data_trans2ddr_pp16),
//     .write_data_valid   (write_data_valid),
//     .Trans_done_0       (Trans_done)
// );


//虚拟wrapper，用以仿�? ddr驱动
verify_write_read_wrapper wrapper(
    .axi_m_aclk_0        (clk_100M),            //输入时钟。随便给频率，无�?�?
    .axi_m_aresetn_0     (rstn),                //低电平复�?
    .axi_m_init_axi_txn_0(data_counter == 'd14),//当一�?始快凑够�?次burst数据时，拉高状�?�复位信号�??
    .write_data_0        (data_trans2ddr_pp16), //�?1024
    .write_data_valid_0  (write_data_valid),    //写数据使�?
    .data_valid_0        (data_outvalid),             //读数�?
    .read_data_0         (ddr_out),       //读数据有�?
    .read_data_valid_0   (1),      //读数据使�?
    .Trans_done_0       (Trans_done)
);
endmodule