"""
第二章 Python基础
  第6节 如何操作文件
    第2题 文件格式转换
"""
import json

def file_convert(input_file_path, output_file_path):
    
    input_file = input_file_path + "/student.csv" 
    output_file = output_file_path + "/student.json" 
    
    fo = open(input_file, 'r', newline='', encoding='utf-8')        
    fw = open(output_file, 'w', encoding='utf-8')  
    
    # 按行读取
    ls = []
    for line in fo:
        line = line.replace("\n", "")       # 将换行换成空
        ls.append(line.split(","))          # 以，为分隔符

    # 转换为字典形式
    for i in range(1, len(ls)):             # 遍历文件的每一行内容，除了列名
        ls[i] = dict(zip(ls[0], ls[i]))     # ls[0]为列名，所以为key,ls[i]为value,

    # 写入到json文件
    json.dump(ls[1:], fw, sort_keys=True, indent=4)

    # 关闭文件
    fo.close()
    fw.close()

file_convert("E:\\Desktop\\thoughtwork\\test\\IO操作", "E:\\Desktop\\thoughtwork\\test\\IO操作")

