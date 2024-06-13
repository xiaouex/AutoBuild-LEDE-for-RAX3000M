#!/bin/bash
#=================================================
# File name: perest-clash-core.sh
# System Required: Linux
# Version: 1.0 se
# Lisence: MIT
# Author: SuLingGG [edit by xiaouex]
# Changelog:Download Meta Core only
#=================================================

echo -e "预置Clash内核"
mkdir -p $GITHUB_WORKSPACE/openwrt/feeds/luci/applications/luci-app-openclash/root/etc/openclash/core
core_path="$GITHUB_WORKSPACE/openwrt/feeds/luci/applications/luci-app-openclash/root/etc/openclash/core"
goe_path="$GITHUB_WORKSPACE/openwrt/feeds/luci/applications/luci-app-openclash/root/etc/openclash"

wget -qO- https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-arm64.tar.gz | tar -zOxvf > $core_path/clash_meta

wget -qO- https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat > $goe_path/GeoIP.dat
wget -qO- https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat > $goe_path/GeoSite.dat

chmod +x $core_path/clash*
