#!/bin/bash

# 功能：计算数组元素的和
# 使用方法：./array_sum.sh 数字1 数字2 数字3 ...
# 示例：./array_sum.sh 1 2 3 4 5

# 检查是否提供了参数
if [ $# -eq 0 ]; then
    echo "错误：请提供至少一个数字作为参数"
    echo "使用方法：$0 数字1 数字2 数字3 ..."
    echo "示例：$0 1 2 3 4 5"
    exit 1
fi

# 初始化sum变量
sum=0
# 遍历所有参数并验证
for num in "$@"
do
    # 检查参数是否为数字
    if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
        echo "错误：'$num' 不是有效的数字"
        echo "使用方法：$0 数字1 数字2 数字3 ..."
        echo "示例：$0 1 2 3 4 5"
        exit 1
    fi
    sum=$((sum + num))
done

# 输出结果
echo "输入的数组: $@"
echo "数组和: $sum"