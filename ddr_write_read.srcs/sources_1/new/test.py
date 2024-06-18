str1 = "0101101001101010110010100110101001101011010011010100110101001101"
str2 = "0110000101100010011000100110001101100001011000110110000101100011"

# 裁剪前12bit
str3 = str1[12:]
str4 = str2[12:]

# 拼接得到str4
str4 += str3

# 复制得到2000bit的字符串
str5 = ''
n = 2
for i in range(500):
    str5 += "".join([char * n for char in str4])

# 裁剪前40个和后40个
str6 = str5[40:1960]

print(str6)

# original_str = "0101"
# n = 2

# # 每一位字符复制n次
# copied_str = "".join([char * n for char in original_str])

# print(copied_str)