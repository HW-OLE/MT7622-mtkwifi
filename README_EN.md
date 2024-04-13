# MT7622 WIFI Driver for OpenWrt

MEDIATEK WIFI Driver for OpenWrt Includes MT7622 and MT7915 wireless drivers Includes MEDIATEK HNAT driver Compatible with Linux kernel 5.10.x, other kernel versions require self-testing Tested OpenWrt forks include: openwrt 22.03, lean’s lede Included kernel packages and software package names: kmod-mtk-hnat, kmod-mt7622, kmod-mt_wifi, l1profile

Instructions:

Clone the openwrt repo you need
Navigate to the root directory of the openwrt source code and clone this repo
./scripts/feeds update -a
./scripts/feeds install -a
Go to the MT7622-mtkwifi directory and run “install -n”, if the luci version is below luci18, execute “install -o”
Select packages as needed, default packages have been modified for xiaomiredmiax6s
make menuconfig
make