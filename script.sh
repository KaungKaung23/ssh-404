#!/bin/bash

plain='\033[0m'

red='\e[31m'
yellow='\e[33m'
gray='\e[90m'
green='\e[92m'
blue='\e[94m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'
# Font Size
# h6 = SMALL , h4 = AVERAGE , h3 = LARGE
# Check Root
[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_404/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "
<h3><font color='red'>▬▬▬▬▬▬ஜ♦♣♠★ஜ▬▬▬▬▬▬
</font></h3>
<h3><font color='magenta'>--- ۩ PREMIUM SERVER ۩ ---
</font></h3>

<h3><font color='green'>--- ۩ SERVER BY 🆂🅼🆃 ۩ ---
</font></h3>

<h4><font color='cyan'>𝘾𝙧𝙚𝙖𝙩 𝘽𝙮 𝙎𝙈𝙏
</font></h4>

<h4><font color='blue'>Develop by SMT
</font></h4>

<h3><font color='red'>▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬
</font></h3>" | tee /etc/ssh/gcp_404 >/dev/null
useradd "smt23" --shell=/bin/false -M
echo "smt23" | chpasswd

echo ""

echo -e "${yello}${plain}"
echo -e "${cyan}${plain}"
echo -e "${cyan}${plain}"
echo -e "${cyan}${plain}"
echo -e "${cyan}${plain}"
echo -e "${cyan}${plain}"
echo -e "${cyan}${plain}"
echo -e "${cyan}${plain}"
echo -e "${green}${plain}"
echo -e "${yellow}${plain}"

echo -e "${cyan}i am SMT 😎 ${plain}"
