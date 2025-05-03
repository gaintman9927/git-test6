#https://www.cnblogs.com/lcword/p/18492283
# echo "文件开头代表：该文件使用的是bash语法"
# var_name="test1.md"
# var_name2="test2.sh"
# var_name3="test3.sh"

# echo "test $var_name"
# echo "test2 $var_name2"
# echo "test3 $var_name3"
# echo `date "+%Y-%m-%d-%H%M%S"`--$var_name
# cp /e/mygit6/$var_name /e/mygit6/another/`date "+%Y-%m-%d-%H%M%S"`--$var_name
# var_para=$(ls)
# echo "test输出变量： $var_name"
# echo "test输出执行命令的结果变量：${var_para}" 
# read -p "请输入您的名字:" in_name
# echo "您输入的名称为:$in_name"
# echo "请输入你的年龄："
# read in_age
# echo "您输入的年龄是：$in_age"
####################批量创建文件
# now_date=$(date "+%Y-%m-%d_%H:%M:%S")
# echo "当前时间:$now_date"
# # 批量创建文件
# touch file{01..03}_$now_date.log
# touch ${now_date}_file{04..07}.log
##############以时间命名每隔2s创建1个文件 计算 数学计算要用’[ ]’括起来并且外头要带一个’$’
# 计算 数学计算要用’[ ]’括起来并且外头要带一个’$’
# 暂停2s
# sleep 2
# # 变量
# a=1
# b=3
# # 计算a、b之和
# sum=$[$a+$b]
# echo "sum is $sum"
# 实例8： 预设变量
#
#  $1的值就是在执行的时候输入的1，而$2的值就是执行的时候输入的$2 $0代表文件名
# echo "$0 $1 $2"
# sum=$[$1+$2]
# echo $sum
# 不带else  ((nums<20))是因为.sh中，用一个小括号或者不用都会报错
# read -p "请输入数字：" nums
# if ((nums<20));then
#         echo "输入不能小于20"
# fi
# elif (())
# if else elif []
# 注释： -lt （小于），-gt （大于），-le （小于等于），-ge （大于等于），-eq （等于），-ne （不等于）
# 格式为： if [ -e filename ] ; then
# -e ：判断文件或目录是否存在
# if [ -e touchfile.sh ];then
#     echo "touchfile.sh 文件存在"
# fi

# #-d ：判断是不是目录，并是否存在
# if [ -d touchfile.sh ];then
#     echo "是目录"
# else
#     echo "touchfile.sh 不是目录"
# fi

# #-f ：判断是否是普通文件，并存在
# if [ -f touchfile.sh ];then
#     echo "touchfile.sh 是普通文件"
# fi

# #-r ：判断文档是否有读权限
# if [ -r touchfile.sh ];then
#     echo "touchfile.sh 有读权限"
# fi

# #-w ：判断是否有写权限
# if [ -w touchfile.sh ];then
#     echo "touchfile.sh 有写权限"
# fi

#-x ：判断是否可执行
# if [ -x touchfile.sh ];then
#     echo "touchfile.sh 是可执行文件"
# fi
# read -p "奇偶判断，请输入一个数值：" nums
# r=$[$nums%2]
# case $r in
# 1)
#     echo "奇数"
#     ;;
# 0)
#     echo "偶数"
#     ;;
# esac


# 实例12： for 循环
# 脚本中的seq 1 5 表示从1到5的一个序列
# for i in `seq 1 5`;do
#     echo $iclear

# done
# for i in  `ls`; do echo $i; done 
# for i in `cat testme.txt` ;do
#  echo line $i;
# done
# a=7
# while [ $a -ge 1]; do
#     echo "$a"
#     a=$[$a-2]
# done
# function sum(){
#         sum=$[$1 + $2]
#         echo $sum
# }
# sum $1 $2
# echo "hello world"
    # ← put the command whos exit code you want to check here &>/dev/null
function test(){
    echo "hello world"
    return 0
}
test
# Calculate the sum of array elements
# This script demonstrates how to sum up all elements in an array
# 数组求和
# 这个脚本演示了如何计算数组中所有元素的和