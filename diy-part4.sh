# 删除原有软件
# rm -rf feeds/luci/applications/{luci-app-mwan3,luci-app-dnsmasq-full} && rm -rf feeds/packages/net/{mwan3,dnsmasq-full,dnsmasq}
# 删除有可能冲突
# rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd-alt,miniupnpd-iptables,wireless-regdb}
# 拉取最新版golang编译
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang




# 
# 举例2，用第三方软件包替换当前源码库中的已有的同名软件包
# 第一步，在 diy-part2.sh 里加入以下代码：用第一行代码先删除源码库中原来的软件，再用第二行代码引入第三方的同名软件包。
# rm -rf package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# 
#git clone https://github.com/jeessy2/ddns-go.git package/feeds/smpackage/ddns-go
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/feeds/smpackage/passwall

# 修改后命令
# git clone https://github.com/kenzok8/small-package --depth 1 --single-branch -b main package/feeds/smpackage/mwan3 还是整个目录 不行
# git clone https://github.com/kenzok8/small-package --depth 1 --single-branch -b main package/feeds/smpackage/dnsmasq

# 移除要替换的包
# rm -rf feeds/package/network/services/dnsmasq
# rm -rf feeds/package/mwan3
# rm -rf feeds/packages/net/smartdns
# rm -rf feeds/luci/themes/luci-theme-argon
# rm -rf feeds/luci/themes/luci-theme-netgear
# rm -rf feeds/luci/applications/luci-app-mosdns
# rm -rf feeds/luci/applications/luci-app-netdata
# rm -rf feeds/luci/applications/luci-app-serverchan

rm -rf package/smpackage/passwall
git clone --single-branch --branch 35f70ad989425c598d4dd99bd4816d548b3c0205 https://github.com/xiaorouji/openwrt-passwall.git package/feeds/smpackage/passwall


# 添加额外插件
#git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
#git clone --depth=1 -b openwrt-18.06 https://github.com/tty228/luci-app-wechatpush package/luci-app-serverchan
#git clone --depth=1 https://github.com/ilxp/luci-app-ikoolproxy package/luci-app-ikoolproxy
#git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
#git clone --depth=1 https://github.com/destan19/OpenAppFilter package/OpenAppFilter
#git clone --depth=1 https://github.com/Jason6111/luci-app-netdata package/luci-app-netdata
#git_sparse_clone main https://github.com/Lienol/openwrt-package luci-app-filebrowser luci-app-ssr-mudb-server
#git_sparse_clone openwrt-18.06 https://github.com/immortalwrt/luci applications/luci-app-eqos
# git_sparse_clone master https://github.com/syb999/openwrt-19.07.1 package/network/services/msd_lite
#git_sparse_clone main https://github.com/kenzok8/small-package mwan3
# 以下稀疏克隆有效
# git_sparse_clone main https://github.com/kenzok8/small-package/dnsmasq package/network/services/dnsmasq

