# MT7622-mtkwifi

please do not keep setting if you like test this builds.


MEDIATEK WIFI DRIVER FOR OpenWrt


put the repo in openwrt folder,run install for openwrt 22.03 or run install_luci18 for lean's lede.
it's tested on linux kernel 5.10.x

"to do"
1) clone openwrt repo!
2) put all the files right
3) ./scripts/feeds update -a
4) ./scripts/feeds install -a
5) make menuconfig
6) select luci app mtwifi,select mt7622 and mt_wifi in kernel module, in extra package select l1profile
7) make download
8) make
