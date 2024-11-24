#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '3i src-git opentopd https://github.com/sirpdboy/sirpdboy-package' feeds.conf.default
sed -i '5s/.*/& bridger/' $GITHUB_WORKSPACE/openwrt/target/linux/mediatek/filogic/target.mk
sed 's/d0f79a16c749ad310d79e1c31f593860619f99eb/40b1c5b6be4e73a6749cf2997c664520eb20055d/g' $GITHUB_WORKSPACE/openwrt/package/network/services/bridger/Makefile
sed 's/2023-05-12/2024-04-22/g' $GITHUB_WORKSPACE/openwrt/package/network/services/bridger/Makefile
sed 's/bee35594767cbcd13764f5c95e4837a4fc73171a91fcdae73aaefe00f4e8f8fa/ae47c30b84f4228065b30e81717cef786d142677fdce13c8e23a96937975d96e/g' $GITHUB_WORKSPACE/openwrt/package/network/services/bridger/Makefile
cp -f $GITHUB_WORKSPACE/Config.in $GITHUB_WORKSPACE/openwrt/toolchain/Config.in
cp -f $GITHUB_WORKSPACE/mt7981b-cmcc-rax3000m-nand.dts $GITHUB_WORKSPACE/openwrt/target/linux/mediatek/dts/mt7981b-cmcc-rax3000m-nand.dts
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
