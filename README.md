# MT7622-mtkwifi

please do not keep setting if you like test this builds.


MEDIATEK WIFI DRIVER FOR OpenWrt
it's tested on linux kernel 5.10.x

install for openwrt 22.03 
install_luci18 for lean's lede (linux kernel 5.10)

"to do"
1) clone openwrt repo,cd openwrt repo
2) clone MT7622-mtkwifi,cd MT7622-mtkwifi,run "install" or "install_luci18"
3) ./scripts/feeds update -a
4) ./scripts/feeds install -a
5) make menuconfig
6) select luci app mtwifi,select mt7622 and mt_wifi in kernel module, in extra package select l1profile
7) make download
8) make
