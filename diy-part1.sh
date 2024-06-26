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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git lteinfo https://github.com/4IceG/luci-app-3ginfo-lite' feeds.conf.default
sed -i '$a src-git atsocat  https://github.com/4IceG/luci-app-at-socat' feeds.conf.default
sed -i '$a src-git smsjs  https://github.com/4IceG/luci-app-sms-tool-js' feeds.conf.default
sed -i '$a src-git modemband  https://github.com/4IceG/luci-app-modemband' feeds.conf.default
