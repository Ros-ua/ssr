sudo yum install cockpit firewalld -y
&& sudo systemctl enable --now cockpit.socket
&& sudo systemctl start firewalld
&& sudo systemctl enable firewalld
&& sudo systemctl status firewalld
&& sudo firewall-cmd --permanent --zone=public --add-service=cockpit
&& sudo firewall-cmd --reload
