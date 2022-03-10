#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Open Clash By Ripunk@E99"
TITLE="Open Clash"
MENU="Choose options:"

OPTIONS=(
1 "Trojan"      
2 "Vmess"
3 "Start Clash"
4 "Stop Clash")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
1)
dialog --inputbox "Berapa Akun Trojan Yang Kamu Gunakan :" 10 45 2>akuntroj
aktroj=$(<akuntroj)
if [ $aktroj = "1" ];
then
    dialog --inputbox "Profile :" 10 45 2>namet
            nmt1=$(<namet)
            dialog --inputbox "SNI :" 10 45 2>snit1.txt
            snt1=$(<snit1.txt)
            dialog --inputbox "Import URL :" 10 45 2>trojan1.txt
            url1=$(<trojan1.txt)
host1=$(grep trojan:// trojan1.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $2}'|awk -F ":" '{print $1}'|awk "NR==1")
#host=$(ping $host -w1 -c1|awk "NR==1"|awk -F '(' '{print $2}'|awk -F ')' '{print $1}')
port1=$(grep trojan:// trojan1.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $2}'|awk -F ":" '{print $2}'|awk -F "/" '{print $1}'|awk "NR==1")
#sni=$(grep sni= sni1.txt|awk -F "=" '{print $2}')
pass1=$(grep trojan:// trojan1.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $1}'|awk "NR==1")
echo """proxies:
- name: "$nmt1"
  type: trojan
  server: $host1
  port: $port1
  password: $pass1
  udp: true
  sni: $snt1
  skip-cert-verify: true """ > .config/clash/Browser.yaml
echo """proxies:
- name: "$nmt1"
  type: trojan
  server: $host1
  port: $port1
  password: $pass1
  udp: true
  sni: $snt1
  skip-cert-verify: true """ > .config/clash/Game.yaml
echo """proxies:
- name: "$nmt1"
  type: trojan
  server: $host1
  port: $port1
  password: $pass1
  udp: true
  sni: $snt1
  skip-cert-verify: true """ > .config/clash/Browser.yaml
echo """proxies:
- name: "$nmt1"
  type: trojan
  server: $host1
  port: $port1
  password: $pass1
  udp: true
  sni: $snt1
  skip-cert-verify: true """ > .config/clash/youtube.yaml
rm namet 2>&1
rm snit1.txt 2>&1
rm trojan.txt 2>&1
clear
bash openclash.sh
fi

if [ $aktroj = "2" ];
then
    dialog --inputbox "Profile :" 10 45 2>namet2
            nmt2=$(<namet2)
            dialog --inputbox "SNI :" 10 45 2>snit2.txt
            snt2=$(<snit2.txt)
            dialog --inputbox "Import URL :" 10 45 2>trojan2.txt
            url2=$(<trojan2.txt)
host2=$(grep trojan:// trojan2.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $2}'|awk -F ":" '{print $1}'|awk "NR==1")
#host=$(ping $host -w1 -c1|awk "NR==1"|awk -F '(' '{print $2}'|awk -F ')' '{print $1}')
port2=$(grep trojan:// trojan2.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $2}'|awk -F ":" '{print $2}'|awk -F "/" '{print $1}'|awk "NR==1")
#sni=$(grep sni= sni1.txt|awk -F "=" '{print $2}')
pass2=$(grep trojan:// trojan2.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $1}'|awk "NR==1")
echo """proxies:
- name: "$nmt2"
  type: trojan
  server: $host2
  port: $port2
  password: $pass2
  udp: true
  sni: $snt2
  skip-cert-verify: true """ > .config/clash/Game.yaml
dialog --inputbox "Profile :" 10 45 2>namet3
            nmt3=$(<namet3)
            dialog --inputbox "SNI :" 10 45 2>snit3.txt
            snt3=$(<snit3.txt)
            dialog --inputbox "Import URL :" 10 45 2>trojan3.txt
            url3=$(<trojan3.txt)
host3=$(grep trojan:// trojan3.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $2}'|awk -F ":" '{print $1}'|awk "NR==1")
#host=$(ping $host -w1 -c1|awk "NR==1"|awk -F '(' '{print $2}'|awk -F ')' '{print $1}')
port3=$(grep trojan:// trojan3.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $2}'|awk -F ":" '{print $2}'|awk -F "/" '{print $1}'|awk "NR==1")
#sni=$(grep sni= sni1.txt|awk -F "=" '{print $2}')
pass3=$(grep trojan:// trojan3.txt|awk -F "://" '{print $2}'|awk -F "@" '{print $1}'|awk "NR==1")
echo """proxies:
- name: "$nmt3"
  type: trojan
  server: $host3
  port: $port3
  password: $pass3
  udp: true
  sni: $snt3
  skip-cert-verify: true """ > .config/clash/Sosmed.yaml
rm namet2 2>&1
rm snit2.txt 2>&1
rm trojan2.txt 2>&1
rm namet3 2>&1
rm snit3.txt 2>&1
rm trojan3.txt 2>&1
fi
echo """
akun trojan 2
Profile : $nmt2
Host    : $host2
Port    : $port2
sni     : $snt2

akun trojan 3
Profile : $nmt3
Host    : $host3
Port    : $port3
sni     : $snt3
"""> akunt.txt
display_result () {
 dialog --title "Info Account" \
        --no-collapse \
        --msgbox "$result" 0 0
}

result=$(cat akunt.txt)
display_result
rm akunt.txt 2>&1 
clear
bash openclash.sh
;;

2)
dialog --inputbox "Profile :" 10 45 2>namev
            nmv=$(<namev)
            dialog --inputbox "BUG : " 10 45 2>bug.txt
            bug=$(<bug.txt)
            dialog --inputbox "Iport URL" 10 45 2>vmess.txt
            urlv=$(<vmess.txt)
            sleep 2
mkdir -p v2ray;juuid=1;n2
portv=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n  //g'|awk -F '"port' '{print $2}'|grep :|sed ':a;N;$!ba;s/\n/ /g'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g')
  if [ ! -f $portv ]; then
 while [ $juuid -lt 17 ]; do
uuid=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n  //g'|awk -F 'id' '{print $"'$n'"}'|grep :|sed ':a;N;$!ba;s/\n/ /g'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g')
juuid=$(echo $uuid|wc -c);((n++))
 done
hostv=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n  //g'|awk -F '"add' '{print $2}'|grep :|sed ':a;N;$!ba;s/\n/ /g'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g')
aid=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n  //g'|awk -F '"aid' '{print $2}'|grep :|sed ':a;N;$!ba;s/\n/ /g'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g')
net=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n  //g'|awk -F '"net' '{print $2}'|grep :|sed ':a;N;$!ba;s/\n/ /g'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g')
path=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n  //g'|awk -F '"path' '{print $2}'|grep :|sed ':a;N;$!ba;s/\n/ /g'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g')
path=$(echo $path|sed 's/\\u003d/=/g'|sed 's/\\u0026/\&/g')
tls=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|sed ':a;N;$!ba;s/\n/ /g'|awk -F 'tls":' '{print $2}'|awk -F ',' '{print $1}'|sed -e 's/://g' -e 's/ //g' -e 's/"//g' -e 's/}//g')
if [ -f $tls ]; then
tls=$(grep vmess: vmess.txt 2>/dev/null|awk -F "//" '{print $2}'|base64 -d 2>/dev/null|grep tls|sed -e 's/:/=/g' -e 's/ //g' -e 's/"//g' -e 's/}//g'|awk -F "=" '{print $1}')
 if [ ! -f $tls ]; then
  if [ $tls != "tls" ]; then
  tls=""
  fi
 fi
fi
   fi

echo """
proxies :
- name: $nmv
  server: $hostv
  port: $portv
  type: vmess
  uuid: $uuid
  sni: $bug
  alterId: 0
  cipher: auto
  tls: true
  skip-cert-verify: true
  udp: true
  network: ws
  ws-path: $path
  ws-headers: {Host: $bug}}""" > .config/clash/Sosmed.yaml
echo """
Profile : $nmv
Host    : $hostv
Port    : $portv
uuid    : $uuid
path    : $path
sni     : $bug
"""> akun.txt
display_result () {
 dialog --title "Info Account" \
        --no-collapse \
        --msgbox "$result" 0 0
}

result=$(cat akun.txt)
display_result

mv config.yaml /sdcard/.config/clash/ 2>&1
sleep 2
rm bug.txt 2>&1
rm vmess.txt 2>&1
rm akun.txt 2>&1
bash openclash
;;
3)
clash -t -d $HOME/.config/clash -f $HOME/.config/clash/config.yaml 2>&1
clear
screen -dmS v2 clash &
for i in $(seq 1 100)
do
    sleep 0.1 
    echo $i
done | whiptail --title 'Start Clash' --gauge 'Connecting...' 6 60 0
status=$(cat $HOME/.config/clash/run/run.logs)
display_result () {
 dialog --title "Status Tunnels" \
        --no-collapse \
        --msgbox "$status" 0 0
}
status=$(cat $HOME/.config/clash/run/run.logs)
display_result
xdg-open "http://127.0.0.1:9090/ui/#/proxies" & exit
;;
4)
pidof clash >pid
PID=$(<pid)
kill -9 $PID
rm pid 2>&1
;;
esac
