#加入argon config
cd package/feeds/kenzo
rm -rf luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config

#加入新argon
cd package/feeds/kenzo
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon
