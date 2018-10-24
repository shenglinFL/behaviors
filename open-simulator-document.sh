#!/bin/sh

# Replace com.apple.phone with your own's bundle ID.
# https://gist.github.com/nickcheng/cbc0717d2c9f79613cf2c042503b5422
# 当前版本Xcode好像有更简便方法
echo "只启动一个模拟器时有效"
function myappdocdir() {
    devid=$(xcrun simctl list devices | grep Booted | sed -n 's/^.*\([A-F0-9]\{8\}-\([A-F0-9]\{4\}-\)\{3\}[A-F0-9]\{12\}\).*$/\1/p')
    for folder in ~/Library/Developer/CoreSimulator/Devices/$devid/data/Containers/Data/Application/*; do
    if [[ -a $folder/.com.apple.mobile_container_manager.metadata.plist ]]; then
        if [[ 'com.xrj.edu.StarEDU' = $(/usr/libexec/PlistBuddy -c 'Print :MCMMetadataIdentifier' $folder/.com.apple.mobile_container_manager.metadata.plist) ]]; then
            echo $folder
            open $folder
            break
        fi
    fi
    done
}
myappdocdir
