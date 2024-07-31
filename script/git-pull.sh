#!/bin/bash

function pull(){
    if [ -d $1 ];then
        echo -e "\n开始处理项目【$1】..."
        cd $1
        # git branch --set-upstream-to="github/master" "master"
        git pull
        cd ..
    else
        echo -e "\n项目【$1】不存在，已跳过！"
    fi
}

pull BaseLib-Java
pull BaseLib-Android
pull BaseLib-Manifests
