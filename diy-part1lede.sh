

# Add a feed source
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

# echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default
# sed -i '1i src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
# sed -i '2i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '3i src-git small https://github.com/kenzok8/small' feeds.conf.default
# echo 'src-git roacn https://github.com/roacn/openwrt-packages' >>feeds.conf.default

# lede软件源
echo 'src-git roacn https://github.com/roacn/openwrt-packages' >>feeds.conf.default

# 活动连接数修改
sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

#sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default


# 添加额外插件
# git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
# git clone --depth=1 https://github.com/immortalwrt/homeproxy package/luci-app-homeproxy
