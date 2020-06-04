sudo passwd root
apt update && apt dist-upgrade -y && apt install wget ufw nano sudo curl -y
wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
sudo systemctl restart sshd && fail2ban-client status ssh-iptables
source <(curl -sL https://multi.netlify.app/v2ray.sh)
wget -N --no-check-certificate https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh && chmod +x tcp.sh && ./tcp.sh
curl -O https://raw.githubusercontent.com/johnrosen1/vpstoolbox/master/vps.sh && chmod +x vps.sh && ./vps.sh
