#!/bin/bash
function install_socks5() {
  systemctl start firewalld #打开防火墙
  firewall-cmd --zone=public --add-port=10316/tcp --permanent #打开端口10316
  firewall-cmd --reload #重启防火墙
  wget --no-check-certificate https://raw.githubusercontent.com/q425636581/linux-http/main/install.sh -O install_proxy.sh
  bash install_proxy.sh --port=10316 --user=liu --passwd=liu
}
install_http
install_socks5
