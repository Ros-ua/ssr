sudo yum install cockpit firewalld -y
sudo systemctl enable --now cockpit.socket
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld
sudo firewall-cmd --permanent --zone=public --add-service=cockpit
sudo firewall-cmd --reload
yum update -y
yum install wget ufw nano sudo curl -y
sudo passwd root
wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
sudo systemctl restart sshd && fail2ban-client status ssh-iptables
curl -O https://raw.githubusercontent.com/Ros-ua/ssr/master/trojan_mult.sh && chmod +x trojan_mult.sh && ./trojan_mult.sh
source <(curl -sL https://git.io/trojan-install)
wget -N --no-check-certificate https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh && chmod +x tcp.sh && ./tcp.sh
