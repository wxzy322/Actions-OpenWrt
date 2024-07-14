#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

#echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default
#sed -i '1i src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
# sed -i '2i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '3i src-git small https://github.com/kenzok8/small' feeds.conf.default
# echo 'src-git roacn https://github.com/roacn/openwrt-packages' >>feeds.conf.default

# sed -i '1i src-git homeproxy https://github.com/immortalwrt/homeproxy' feeds.conf.default

# 活动连接数修改
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default


# 添加额外插件
# git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
# git clone --depth=1 https://github.com/immortalwrt/homeproxy package/luci-app-homeproxy
