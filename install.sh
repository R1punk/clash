#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
mkdir $HOME/.config
echo -e $b">"$w" Termux OpenClash Non Root"
echo -e $b">"$w" prepare for installing dependencies ..."
sleep 3
#echo -e $b">"$w" installing package: "$g"update"$w
#pkg update
echo -e $b">"$w" installing pacakge: "$g"clash"$w
pkg install clash
echo -e $b">"$w" installing pacakge: "$g"unzip"$w
pkg install unzip
echo -e $b">"$w" installing modules: "$g"screen"$w
pkg install screen
echo -e $b">"$w" installing modules: "$g"wget"$w
pkg install wget
echo -e $b">"$w" successfully installing dependencies"
echo -e $b">"$W" settings clash"
unzip .config.zip >&/dev/null
sleep 4
mv clash $HOME/.config/ >&/dev/null
sleep 2
mv openclash.sh $HOME >&/dev/null
cd
rm -r -f clash >&/dev/null
clear
bash openclash.sh
