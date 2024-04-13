# MediaTek WIFI Driver for OpenWrt
MediaTek WIFI Driver for OpenWrt
I18N: [English](README_EN.md) | [简体中文](README.md)
Includes MT7622 and MT7915 wireless drivers, as well as the MediaTek HNAT driver. Compatible with Linux kernel 5.10.x; other kernel versions require self-testing. Tested OpenWrt forks include: openwrt 22.03, lean's lede. The included kernel packages and software package names are: kmod-mtk-hnat, kmod-mt7622, kmod-mt_wifi, luci-app-mtwifi, l1profile.
Instructions:
1) Clone the openwrt repo you need
2) Navigate to the root directory of the openwrt source code and clone this repo
3) ./scripts/feeds update -a
4) ./scripts/feeds install -a
5) Go to the MT7622-mtkwifi directory and run "./install.sh -n". If the luci version is below luci18, execute "./install -o" (Note: Make sure to install feeds before running install, otherwise the luci patches will not apply)
6) Select packages as needed; the default packages have been modified for xiaomiredmiax6s
7) make menuconfig
8) make
