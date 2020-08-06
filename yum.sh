sudo passwd root
yum update -y && yum install wget ufw nano sudo curl -y
wget -N --no-check-certificate https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh && chmod +x tcp.sh && ./tcp.sh
yum install firewalld -y && systemctl enable firewalld && systemctl start firewalld
sudo yum install cockpit -y && sudo systemctl enable --now cockpit.socket && sudo firewall-cmd --permanent --zone=public --add-service=cockpit && sudo firewall-cmd --reload
wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
sudo systemctl restart sshd && fail2ban-client status ssh-iptables
curl -O https://raw.githubusercontent.com/atrandys/trojan/master/trojan_mult.sh && chmod +x trojan_mult.sh && ./trojan_mult.sh
nano /usr/src/trojan/server.conf
systemctl restart trojan
systemctl enable nginx
source <(curl -sL https://multi.netlify.app/v2ray.sh)
