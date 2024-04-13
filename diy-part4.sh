# 删除原有软件
rm -rf feeds/luci/applications/{luci-app-passwall,luci-app-ddns-go,luci-app-mwan3,luci-app-dnsmasq} && rm -rf feeds/packages/net/{passwall,ddns-go,mwan3,dnsmasq}
# 删除有可能冲突
# rm -rf feeds/smpackage/{base-files,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd-alt,miniupnpd-iptables,wireless-regdb}
# 拉取最新版golang编译
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
