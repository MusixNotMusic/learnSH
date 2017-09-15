PRG=$0   #当前shell的第一个变量  argv[0]  文件名字

# while[-h "$PRG"] 该文件是否软链接 
# 循环 检测 
while [ -h "$PRG" ]; do
    ls=`ls -ld "$PRG"` 
    # 打印出当前文件状态  如果是软链接的话 会有 
    # lrwxr-xr-x  1 musix  staff  21  9 15 21:08 test.sh -> jd-gui-master/test.sh
    # 正则匹配该字符串 .* 匹配任何字符  ^ 为正则起始 $正则结束  -> 截取(jd-gui-master/test.sh)
    # 测试时候 发现 \(xxxx\) 在括号内部的数据会被截取 字段
    link=`expr "$ls" : '^.*-> \(.*\)$' 2>/dev/null`
    if expr "$link" : '^/' 2> /dev/null >/dev/null; then
        PRG="$link"
    else
        PRG="`dirname "$PRG"`/$link"
    fi
done

#获取绝对路径
# set the directory abspath of the current shell script
PROGDIR=`dirname "$PRG"`
echo $PROGDIR
