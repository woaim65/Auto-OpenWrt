#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
echo 'src-git helloworld https://github.com/fw876/helloworld.git;master' >>feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
#内核
sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.6/g' target/linux/x86/Makefile

####### 科学上网插件 #######
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci-smartdns-dev' >>feeds.conf.default
# echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default
rm -rf feeds/luci/applications/luci-app-passwall

####### darkmatter主题 #######
#echo 'src-git darkmatter git://github.com/apollo-ng/luci-theme-darkmatter.git' >>feeds.conf.default
