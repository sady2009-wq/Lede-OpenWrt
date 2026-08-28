#!/bin/bash

# 自动切换到 openwrt 目录（如果存在）
if [ -d "openwrt" ]; then
    cd openwrt
elif [ -d "../openwrt" ]; then
    cd ../openwrt
elif [ -d "$GITHUB_WORKSPACE/openwrt" ]; then
    cd $GITHUB_WORKSPACE/openwrt
else
    echo "错误: 找不到 openwrt 目录"
    exit 1
fi

echo "当前目录: $(pwd)"
git clone --progress https://github.com/vernesong/OpenClash.git package/OpenClash
