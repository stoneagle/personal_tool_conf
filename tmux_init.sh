#!/bin/sh
#
# name     : tmuxen， tmux environment made easy
# author   : Xu Xiaodong xxdlhy@gmail.com
# license  : GPL
# created  : 2012 Jul 01
# modified : 2012 Jul 02
#

cmd=$(which tmux)" -2" # tmux path
cmd_check=$(which tmux) # tmux path
session=golang   # session name

if [ -z $cmd_check ]; then
  echo "You need to install tmux."
  exit 1
fi

opt=$1
echo $opt 
if [ $opt ]; then
    case $opt in
        "time")
            dir="/home/wuzhongyang/opengrok/source/time"
            ;;
        "magmadar")
            dir="/home/wuzhongyang/go_project/src/qihoo.net/qssweb/magmadar"
            ;;
        "go_time")
            dir="/home/wuzhongyang/go_project/src/time"
            ;;
        "k8s")
            dir="/home/wuzhongyang/go_project/src/qihoo.net/qssweb/k8splatform"
            ;;
        *)
            echo "该项目不存在"
            exit 1
            ;;

    esac
else
    echo "请输入项目名称" 
    exit 1
fi

$cmd has -t $session

if [ $? != 0 ]; then
  $cmd new -d -n vim -c $dir -s $session "vim" 
  $cmd selectp -t 1
  $cmd splitw -h -c $dir -p 30 "zsh"
  $cmd selectp -t 2
  $cmd splitw -v -c $dir -p 50 "zsh"
  # $cmd neww -n stat -t $session "top" 
  # $cmd selectw -t $session:2
  # $cmd selectp -t 1 
  # $cmd splitw -h -p 50 "zsh"
  $cmd selectw -t $session:1
  $cmd selectp -t 1
fi

$cmd att -t $session

exit 0
