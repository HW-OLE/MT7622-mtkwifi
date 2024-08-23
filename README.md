# MEDIATEK WIFI driver for OpenWrt
MEDIATEK WIFI driver for OpenWrt
Contains MT7622 and MT7915 wireless drivers, including MEDIATEK HNAT driver (lean modified version, compatible with DSA and swconfig). Compatible with linux kernel 5.10.x, other kernel versions are tested by yourself. For lean's lede adaptation, the tested and compiled Commit 5428ab1b70127e08c21f6307c95432cea8badb8e on Sep 17, 2022. The attached kernel package and software package names are: kmod-mtk-hnat, kmod-mt7622, ​​kmod-mt_wifi, luci-app-mtwifi, l1profile

How to use:

1) Clone the openwrt repo you need

2) Enter the openwrt source code root directory and clone this repo

3) ./scripts/feeds update -a

4) ./scripts/feeds install -a

5) Enter the MT7622-mtkwifi directory and run "./install.sh -n". If the luci version is lower than luci18, execute "./install -o" (note that you must install feed first and then install, otherwise the luci patch will not be applied)

6) Select the software package as needed. The default software package has been modified for xiaomiredmiax6s

7) make menuconfig

8) make
