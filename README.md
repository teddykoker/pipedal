# pipedal

Update and Upgrade

```
sudo apt update && sudo apt upgrade
```

### Access Point

```
sudo apt install dnsmasq hostapd
sudo systemctl stop dnsmasq
sudo systemctl stop hostapd
sudo reboot
```

#### Static IP

```
sudo nano /etc/dhcpcd.conf
```

Edit so looks like:

```
interface wlan0
    static ip_address=192.168.4.1/24
    nohook wpa_supplicant
```

Restart dhcpcd:

```
sudo service dhcpcd restart
```

#### Configure dnsmasq

backup config

```
sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
sudo nano /etc/dnsmasq.conf
```

type the following:

```
interface=wlan0      # Use the require wireless interface - usually wlan0
  dhcp-range=192.168.4.2,192.168.4.20,255.255.255.0,24h
```

#### Configure hostapd

```
sudo nano /etc/hostapd/hostapd.conf
```

Add following:

```
interface=wlan0
driver=nl80211
ssid=Pedal
channel=7
```

Tell where conf is

```
sudo nano /etc/default/hostapd
```

Replace:

```
DAEMON_CONF="/etc/hostapd/hostapd.conf"
```

Edit /etc/sysctl.conf and uncomment this line:

```
net.ipv4.ip_forward=1
```

Add a masquerade for outbound traffic on eth0:

```
sudo iptables -t nat -A  POSTROUTING -o eth0 -j MASQUERADE
```

Save the iptables rule.

```
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
```

Edit /etc/rc.local and add this just above "exit 0" to install these rules on boot.

```
iptables-restore < /etc/iptables.ipv4.nat
```
