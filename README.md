# 用于OpenWrt的MEDIATEK WIFI驱动程序
用于OpenWrt的MEDIATEK WIFI驱动程序
I18N:  [English](README_EN.md) | [简体中文](README.md)
包含MT7622和MT7915无线驱动，包含MEDIATEK HNAT驱动。兼容linux内核5.10.x，其他内核版本自行测试。测试过的openwrt fork有:openwrt 22.03、lean's lede。附带的内核包、软件包名有：kmod-mtk-hnat、kmod-mt7622、kmod-mt_wifi、luci-app-mtwifi、l1profile

使用方法：
1) 克隆你需要的openwrt repo
2) ，进入openwrt源码根目录,克隆本repo
3) ./scripts/feeds update -a
4) ./scripts/feeds install -a
5) 进入到MT7622-mtkwifi目录，运行"./install.sh -n",如果luci版本低于luci18，执行"./install -o"(注意一定要先安装feed再install，不然luci补丁打不上)
6) 根据需要选择软件包，已针对xiaomiredmiax6s修改了默认软件包
7) make menuconfig
8) make


