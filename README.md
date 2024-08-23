MEDIATEK WIFI Driver for OpenWrt

MEDIATEK WIFI driver for OpenWrt I18N: English | Simplified Chinese Contains MT7622 and MT7915 wireless drivers, including MEDIATEK HNAT driver (lean modified version, compatible with DSA and swconfig). Compatible with linux kernel 5.10.x, other kernel versions are tested by yourself. For lean's lede adaptation, the tested and compiled Commit 5428ab1b70127e08c21f6307c95432cea8badb8e on Sep 17, 2022. The attached kernel packages and software package names are: kmod-mtk-hnat, kmod-mt7622, ​​kmod-mt_wifi, luci-app-mtwifi, l1profile

Directions:

    Clone the openwrt repo you need
    , enter the openwrt source code root directory, clone this repo
    ./scripts/feeds update -a
    ./scripts/feeds install -a
    Enter the MT7622-mtkwifi directory and run "./install.sh -n". If the luci version is lower than luci18, execute "./install -o" (note that you must install the feed first and then install, otherwise the luci patch will not be applied)
    Select the software package as needed. The default software package has been modified for xiaomiredmiax6s.
    make menuconfig
    make
