#!/bin/sh

# 当前版本Xcode更简便的方法
#xcrun simctl get_app_container booted com.xrj.edu.StarEDU data

#cd $(xcrun simctl get_app_container booted com.xrj.edu.StarEDU data)
#echo -n "请输入Bundle ID: "
#read bundleID

#BUNDLE_ID=`xcodebuild -showBuildSettings | grep PRODUCT_BUNDLE_IDENTIFIER`

#echo $BUNDLE_ID

#exit 0

read -p "查找当前启动模拟器的沙盒路径，请输入APP的Bundle ID: " bundleID

#if [ -z "${bundleID}" ];then
#    bundleID=$BUNDLE_ID
#fi

echo "APP沙盒路径: "
xcrun simctl get_app_container booted $bundleID data
open $(xcrun simctl get_app_container booted $bundleID data)

