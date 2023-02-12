#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# =========================================
# Getting
MYIP=$(curl -sS ipv4.icanhazip.com)
IZIN=$(curl -sS https://raw.githubusercontent.com/mymasway/kamunanya/main/ip | awk '{print $4}' | grep $MYIP)
if [ "$MYIP" = "$IZIN" ]; then
echo -e "ok"
else
res="Perizinan Di Tolak..."
fi
res="Perizinan Diberikan..."
clear
mkdir /var/lib/crot;
echo "IP=" >> /var/lib/crot/ipvps.conf
cd
#install tools/alat
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ INSTALL TOOL/ALAT ⇲                       \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -ne "[ ${yell}ORANGE${NC} ] Ingin Menginstall Tools ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
Tools Not Install
else
wget https://raw.githubusercontent.com/mymasway/XRAY/main/install-tools.sh && chmod +x install-tools.sh && ./install-tools.sh
fi
#


#install SSH
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ INSTALL SSH & OPENVPN ⇲                       \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -ne "[ ${yell}ORANGE${NC} ] Ingin Menginstall SSH ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
Tools Not Install
else
wget https://raw.githubusercontent.com/mymasway/XRAY/main/ssh/cf.sh && chmod +x cf.sh && ./cf.sh
wget https://raw.githubusercontent.com/mymasway/XRAY/main/ssh/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh.sh
fi
#


#Instal Xray
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ INSTALL XRAY ⇲                       \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -ne "[ ${yell}ORANGE${NC} ] Ingin Menginstall Xray ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
Xray Not Install
else
wget https://raw.githubusercontent.com/mymasway/XRAY/main/install-xray.sh && chmod +x install-xray.sh && ./install-xray.sh
fi


#install xmenu
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                     ⇱ INSTALL MENU ⇲                       \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
wget https://raw.githubusercontent.com/mymasway/XRAY/main/menu/updatedll.sh && chmod +x updatedll.sh && ./updatedll.sh
#
#SELESAI
echo " "
echo "Installation has been completed!!"echo " "
echo "" | tee -a log-install.txt
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"tee -a log-install.txt
echo -e "\E[44;1;39m                     ⇱ SCRIPT XRAY MULTI PORT ⇲                       \E[0m"tee -a log-install.txt
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"tee -a log-install.txt
echo -e ""tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - Nginx                                                    : 89"  | tee -a log-install.txt
echo "   - PORT SQUID                  : 4000,5000"  | tee -a log-install.txt
echo "   - PORT STUNNEL5                  : 500"  | tee -a log-install.txt
echo "   - WEBSOCKET NON TLS                  : 8880,80"  | tee -a log-install.txt
echo "   - PORT OVPN WS NON TLS                  : 8080,80"  | tee -a log-install.txt
echo "   - PORT OVPN TCP                  : 700"  | tee -a log-install.txt
echo "   - PORT OVPN UDP                  : 800"  | tee -a log-install.txt
echo "   - PORT OPENSSH                  : 443"  | tee -a log-install.txt
echo "   - PORT OVPN SSL                  : 443"  | tee -a log-install.txt
echo "   - PORT DROPBEAR                  : 443"  | tee -a log-install.txt
echo "   - PORT OVPN WS TLS                  : 443"  | tee -a log-install.txt
echo "   - WEBSOCKET TLS                  : 8443,2096,2053,443"  | tee -a log-install.txt
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"tee -a log-install.txt
echo "   - XRAYS TROJAN WS TLS                  : 443"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS WS TLS   : 443"  | tee -a log-install.txt
echo "   - XRAYS VLESS WS TLS                      : 443"  | tee -a log-install.txt
echo "   - XRAYS VMESS WS TLS                     : 443"  | tee -a log-install.txt
echo "   - XRAYS TROJAN WS HTTP               : 80"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS  HTTP       : 80"  | tee -a log-install.txt
echo "   - XRAYS VLESS WS HTTP                   : 80"  | tee -a log-install.txt
echo "   - XRAYS VMESS WS HTTP                  : 80"  | tee -a log-install.txt
echo "   - XRAYS TROJAN GRPC                       : 443"  | tee -a log-install.txt
echo "   - XRAYS SHADOWSOCKS GRPC        : 443"  | tee -a log-install.txt
echo "   - XRAYS VMESS GRPC                         : 443"  | tee -a log-install.txt
echo "   - XRAYS VLESS GRPC                          : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                  : [ON]"  | tee -a log-install.txt
echo "   - Dflate                       : [ON]"  | tee -a log-install.txt
echo "   - IPtables                   : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot           : [ON]"  | tee -a log-install.txt
echo "   - IPv6                          : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo " Reboot 15 Sec"
sleep 15
cd
rm -rf updatedll
rm -rf updatedll.sh
rm -rf setup.sh
rm -rf install-xray.sh
rm -rf install-tools.sh

