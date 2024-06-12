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
wget -P feeds/luci/applications/luci-app-openclash/root/etc/openclash/core/clash_meta/ https://raw.githubusercontent.com/vernesong/OpenClash/core/master/meta/clash-linux-arm64.tar.gz
wget -P feeds/luci/applications/luci-app-openclash/root/etc/openclash/ https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
wget -P feeds/luci/applications/luci-app-openclash/root/etc/openclash/ https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
