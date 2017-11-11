sysctl net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o wlp1s0 -j MASQUERADE
iptables -A FORWARD -i eth0    -o wlp1s0 -j ACCEPT
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT

