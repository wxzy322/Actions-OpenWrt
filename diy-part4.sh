# 删除原有软件
rm -rf feeds/luci/applications/{luci-app-passwall,luci-app-ddns-go,luci-app-mwan3,luci-app-dnsmasq} && rm -rf feeds/packages/net/{passwall,ddns-go,mwan3,dnsmasq}
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
git clone https://github.com/jeessy2/ddns-go.git package/feeds/smpackage/ddns-go
git clone https://github.com/xiaorouji/openwrt-passwall.git package/feeds/smpackage/passwall

# 修改后命令
# git clone https://github.com/kenzok8/small-package --depth 1 --single-branch -b main package/feeds/smpackage/mwan3 还是整个目录 不行
# git clone https://github.com/kenzok8/small-package --depth 1 --single-branch -b main package/feeds/smpackage/dnsmasq

svn co https://github.com/kenzok8/small-package/trunk/mwan3 package/feeds/smpackage/mwan3
svn co https://github.com/kenzok8/small-package/trunk/dnsmasq package/feeds/smpackage/dnsmasq
