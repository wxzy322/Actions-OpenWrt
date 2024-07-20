# 删除&替换immortal面板及部分冲突默认软件

rm -rf feeds/luci/modules/luci-base
rm -rf feeds/luci/modules/luci-mod-status
rm -rf feeds/packages/utils/coremark
rm -rf feeds/packages/net/v2ray-geodata

svn export https://github.com/immortalwrt/luci/branches/master/modules/luci-base feeds/luci/modules/luci-base
svn export https://github.com/immortalwrt/luci/branches/master/modules/luci-mod-status feeds/luci/modules/luci-mod-status
