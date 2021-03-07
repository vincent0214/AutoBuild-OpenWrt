#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.123.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Update argon theme
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git && rm -rf openwrt/package/lean/luci-theme-argon && mv luci-theme-argon openwrt/package/lean/

#3 Add other theme
git clone --depth=1  https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom && rm -rf openwrt/package/lean/luci-theme-infinityfreedom && mv luci-theme-infinityfreedom openwrt/package/lean/
git clone --depth=1 -b 18.06 https://github.com/garypang13/luci-theme-edge && rm -rf openwrt/package/lean/luci-theme-edge && mv luci-theme-edge openwrt/package/lean/
