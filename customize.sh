#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Update argon theme
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git && rm -r openwrt/package/lean/luci-theme-argon && mv luci-theme-argon openwrt/package/lean/