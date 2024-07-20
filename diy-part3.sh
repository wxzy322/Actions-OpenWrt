
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate
# 删除&替换immortal面板及部分冲突默认软件

rm -rf feeds/luci/modules/luci-base
rm -rf feeds/luci/modules/luci-mod-status
rm -rf feeds/packages/utils/coremark
rm -rf feeds/packages/net/v2ray-geodata



wget https://github.com/immortalwrt/luci/archive/refs/heads/master.zip -O luci.zip
unzip luci.zip
mkdir -p feeds/luci/modules
mv luci-master/modules/luci-base feeds/luci/modules/
mv luci-master/modules/luci-mod-status feeds/luci/modules/
rm -rf luci-master luci.zip
    

rm -rf ./tmp

./scripts/feeds update -a

./scripts/feeds install -a
