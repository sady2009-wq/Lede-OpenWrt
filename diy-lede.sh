#!/bin/bash
cd openwrt
rm -rf package/lean/luci-theme-argon
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 说明：
# 除了第一行的#!/bin/bash不要动，其他的设置，前面带#表示不起作用，不带的表示起作用了（根据你自己需要打开或者关闭）
#

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了，其他的不要动
#sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  #主题-edge-动态登陆界面

# ===== OpenClash 出国软件（修正） =====
# 方法：拉取完整仓库（推荐）
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
# 然后在 make menuconfig 中勾选：LuCI → Applications → luci-app-openclash
