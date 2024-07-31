#!/bin/bash

# 下载仓库
function clone(){
    if [ -d $1 ];then
        echo -e "\n项目【$1】已存在，未下载！"
    else
        echo -e "\n开始下载项目【$1】..."
        git clone "git@github.com:BI4VMR/${1}.git" "$1"
    fi
}

clone BaseLib-Java
clone BaseLib-Android


# 配置远程服务器
function config(){
    if [ -d $1 ];then
        echo -e "\n开始配置项目【$1】..."
        cd $1
        git remote rename origin github
        git branch --set-upstream-to="github/master" "master"
        git config user.name "BI4VMR"
        git config user.email "bi4vmr@outlook.com"
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

config BaseLib-Java
config BaseLib-Android
