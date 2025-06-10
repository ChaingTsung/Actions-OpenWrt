#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
rm -rf feeds/smpackage/{base-files,uugamebooster,dnsmasq,firewall*,fullconenat,libnftnl,nftables,ppp,opkg,ucl,upx,vsftpd*,miniupnpd-iptables,wireless-regdb,linkmount,vmease,luci-app-passwall2,linkease}
rm -rf feeds/small/luci-app-passwall2
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Modify default IP
#sed -i '150s/192.168.1.1/10.0.0.1/' package/base-files/files/bin/config_generate
#sed -i '151s/192.168/10.0/' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/Holive/g' package/base-files/files/bin/config_generate

rm -rf feeds/modem/{quectel*,rooter,luci-app-usbmodem,luci-app-spdmodem,luci-app-pcimodem}



# Update bcm57810s 2.5g
 [ -e "target/linux/x86/patches-6.12/993-bnx2x_warpcore_8727_2_5g_sgmii_txfault.patch" ] || wget -P target/linux/x86/patches-6.6/ 'https://raw.githubusercontent.com/coolsnowwolf/lede/master/target/linux/x86/patches-6.12/993-bnx2x_warpcore_8727_2_5g_sgmii_txfault.patch'

# For Quectel 5G Modules
# [ -e "package/wwan" ]  ||  git clone https://github.com/ChaingTsung/QMI_WWAN_Q.git package/quectel_QMI
# [ -e "package/wwan" ]  ||  git clone  https://github.com/ChaingTsung/quectel_cm-5G.git package/quectel_cm-5G
# [ -e "package/wwan" ]  ||  git clone   https://github.com/ChaingTsung/Quectel_MHI.git package/quectel_MHI
