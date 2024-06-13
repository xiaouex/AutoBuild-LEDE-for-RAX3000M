git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git $GITHUB_WORKSPACE/openwrt/package/lean/luci-theme-argon

rm -rf $GITHUB_WORKSPACE/openwrt/feeds/kenzo/luci-theme-argon


git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git $GITHUB_WORKSPACE/openwrt/package/lean/luci-app-argon-config

rm -rf $GITHUB_WORKSPACE/openwrt/feeds/kenzo/luci-app-argon-config
