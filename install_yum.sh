sudo passwd root
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
yum install firewalld -y && systemctl enable firewalld && systemctl start firewalld
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
sudo yum install cockpit -y && sudo systemctl enable --now cockpit.socket && sudo firewall-cmd --permanent --zone=public --add-service=cockpit && sudo firewall-cmd --reload
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
yum update -y && yum install wget ufw nano sudo curl -y
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
wget https://raw.githubusercontent.com/FunctionClub/Fail2ban/master/fail2ban.sh && bash fail2ban.sh 2>&1 | tee fail2ban.log
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
sudo systemctl restart sshd && fail2ban-client status ssh-iptables
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
curl -O https://raw.githubusercontent.com/atrandys/trojan/master/trojan_mult.sh && chmod +x trojan_mult.sh && ./trojan_mult.sh
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
nano /usr/src/trojan/server.conf
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
systemctl restart trojan
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
source <(curl -sL https://multi.netlify.app/v2ray.sh)
echo "Sleeping for 5 seconds…"
sleep 5
echo "Completed"
wget -N --no-check-certificate https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh && chmod +x tcp.sh && ./tcp.sh
