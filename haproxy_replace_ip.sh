#!/bin/bash

# 目录路径
config_dir="/usr/local/haproxy/"

# 遍历目录下的所有文件
find "$config_dir" -type f -name "*.cfg" | while read -r file; do
        # 使用 sed 替换 IP 地址
        sed -i 's/10\.101\.166\.\([0-9]*\):\([0-9]*\)/10.101.224.\1:\2/g' "$file"
        echo "已更新文件: $file"
done

echo "替换完成！"
