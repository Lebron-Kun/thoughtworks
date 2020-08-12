'''
第二章 Python基础
  第1节 工具安装及基本使用
    第2题 简单编程题
'''
def fib(n):
    fibs = [1, 1]
    if n == 1:
        return [1]
    if n == 2:
        return [1, 1]
    for i in range(2, n):
        fibs.append(fibs[-1] + fibs[-2])
    return fibs
    
print(fib(5))