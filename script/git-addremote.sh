#!/bin/bash

# 配置远程服务器
function config(){
    if [ -d $1 ];then
        echo -e "\n开始处理项目【$1】..."
        cd $1
        # 私有仓库（LAN）
        git remote add private-lan "git@172.18.5.1:bi4vmr/$1.git"
        # 私有仓库（VPN）
        git remote add private-vpn "http://192.168.128.1:30002/bi4vmr/$1.git"
        # 私有仓库（FRP）
        # git remote add private-frp ""
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

config BaseLib-Java
config BaseLib-Android
