#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.1.254/g' package/base-files/files/bin/config_generate
sed -i 's/16384/65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '30a tools-y += ucl upx' tools/Makefile
sed -i '44a $(curdir)/upx/compile := $(curdir)/ucl/compile' tools/Makefile
