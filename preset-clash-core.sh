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
mkdir -p feeds/luci/applications/luci-app-openclash/root/etc/openclash/core
core_path="feeds/luci/applications/luci-app-openclash/root/etc/openclash/core"
goe_path="feeds/luci/applications/luci-app-openclash/root/etc/openclash"

wget  https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-amd64.tar.gz | tar xOvz > feeds/luci/applications/luci-app-openclash/root/etc/openclash/core/clash_meta
wget  https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat > feeds/luci/applications/luci-app-openclash/root/etc/openclash/GeoIP.dat
wget  https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat > feeds/luci/applications/luci-app-openclash/root/etc/openclash/GeoSite.dat

chmod +x feeds/luci/applications/luci-app-openclash/root/etc/openclash/core/clash*
