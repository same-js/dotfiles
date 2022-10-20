#!/bin/bash

backupDir="dotfiles_backup"
now=`date '+%Y-%m-%d-%H-%M-%S'`
echo "creating backup to [~/$backupDir/$now]."

cd ~/

# バックアップディレクトリが存在しない場合は作成
if [ ! -d ./$backupDir ]; then
    mkdir $backupDir
fi
cd $backupDir
mkdir $now
cd $now 

# ここにマシンにインストールする dotfiles を定義
dotfiles=(
    ".vimrc"
    ".bashrc"
    ".bash_profile"
)

for dotfile in "${dotfiles[@]}"
do
    mv ~/$dotfile ~/$backupDir/$now/
    ln ~/dotfiles/$dotfile ~    
done
