#!/bin/bash

# 目标路径
SRC_DIR="./src"

# 头文件目录
INCLUDE_DIR="./include"

# 静态库名称
LIB_NAME="tars_cpp_utils.a"

# 临时存放 .o 文件的目录
OBJ_DIR="obj"

# 创建存放 .o 文件的目录
mkdir -p $OBJ_DIR

# 编译 .cpp 文件为 .o 文件
for cpp_file in $SRC_DIR/*.cpp; do
  obj_file="$OBJ_DIR/$(basename "${cpp_file%.cpp}.o")"
  g++ -std=c++11 -I $INCLUDE_DIR -c $cpp_file -o $obj_file
done

# 创建静态库
ar rcs $LIB_NAME $OBJ_DIR/*.o

# 删除 .o 文件
rm -rf $OBJ_DIR

echo "静态库 $LIB_NAME 已创建。"

