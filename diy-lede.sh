bash
#!/bin/bash

# 切换到 openwrt 目录
if [ -d "openwrt" ]; then
    cd openwrt
else
    echo "错误: 找不到 openwrt 目录"
    exit 1
fi

echo "当前目录: $(pwd)"

# ... 其他配置（sed 等）...

# ==============================================
# OpenClash（使用稀疏检出，只拉取 luci-app-openclash）
# ==============================================
mkdir -p package/luci-app-openclash
cd package/luci-app-openclash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull --depth 1 origin master

# 回到 openwrt 目录
cd ../../..
