
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate
# 删除&替换immortal面板及部分冲突默认软件

rm -rf feeds/luci/modules/luci-base
rm -rf feeds/luci/modules/luci-mod-status
rm -rf feeds/packages/utils/coremark
rm -rf feeds/packages/net/v2ray-geodata

svn export https://github.com/immortalwrt/luci/branches/master/modules/luci-base feeds/luci/modules/luci-base
svn export https://github.com/immortalwrt/luci/branches/master/modules/luci-mod-status feeds/luci/modules/luci-mod-status


rm -rf ./tmp

./scripts/feeds update -a

./scripts/feeds install -a
