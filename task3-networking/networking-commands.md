# Networking Commands Reference - Task 3 (Linux)

## 🔧 Essential Networking Commands for Linux

### 1. IP Configuration Commands

#### Primary Commands (Always Available)
```bash
ip a                       # Show all interfaces and IPs
ip addr show               # Same as above
hostname -I                # Show system IP addresses
ip route show              # Show routing table
```

#### Traditional Commands (May Need Installation)
```bash
# Install net-tools if needed:
sudo apt update
sudo apt install net-tools

ifconfig                   # Traditional interface configuration
ifconfig eth0              # Show specific interface
route -n                   # Show routing table
```

---

### 2. Connectivity Testing

#### Basic Connectivity
```bash
ping -c 4 8.8.8.8         # Send 4 packets to Google DNS
ping -c 4 google.com       # Test connectivity + DNS resolution
ping 127.0.0.1            # Loopback test
ping -c 1 $(ip route | grep default | awk '{print $3}')  # Test gateway
```

#### Advanced Ping Options
```bash
ping -i 2 google.com       # 2 second intervals
ping -s 1000 8.8.8.8       # Large packet size (1000 bytes)
ping -W 5 8.8.8.8          # 5 second timeout
ping -f google.com         # Flood ping (requires root)
```

---

### 3. Port and Service Analysis

#### Modern Commands (Always Available)
```bash
ss -tuln                  # Show TCP/UDP listening ports
ss -tulpn                 # Include process names
ss -s                     # Socket statistics summary
ss -tulpn | grep :22      # Check if SSH (port 22) is running
```

#### Traditional Commands (May Need Installation)
```bash
# Install net-tools if needed:
sudo apt install net-tools

netstat -tuln             # Traditional port listing
netstat -tulpn            # With process information
netstat -r                # Show routing table
netstat -s                # Protocol statistics
```

#### Service Testing
```bash
telnet localhost 22       # Test SSH connection
nc -zv google.com 80      # Test port connectivity
lsof -i                   # List network connections (if available)
```

---

### 4. DNS Resolution Commands

#### Basic DNS Lookup (Usually Available)
```bash
nslookup google.com       # Basic DNS lookup
nslookup google.com 8.8.8.8  # Use specific DNS server
host google.com           # Simple DNS lookup
```

#### Advanced DNS (Install if Needed)
```bash
# Install dnsutils for dig:
sudo apt install dnsutils

dig google.com            # Detailed DNS query
dig @8.8.8.8 google.com   # Use specific DNS server
dig google.com MX         # Mail exchange records
dig google.com NS         # Name server records
dig google.com AAAA       # IPv6 addresses
dig +short google.com     # Short output format
```

#### DNS Cache Management
```bash
sudo systemd-resolve --flush-caches  # Clear DNS cache (systemd)
sudo service systemd-resolved restart # Restart DNS service
cat /etc/resolv.conf      # Show DNS configuration
```

---

### 5. Network Path Tracing

#### Install Tracing Tools
```bash
# Install traceroute and mtr:
sudo apt update
sudo apt install traceroute mtr-tiny
```

#### Route Tracing
```bash
traceroute google.com     # Trace network path
traceroute -m 15 google.com  # Maximum 15 hops
mtr google.com            # Continuous trace route
mtr -c 10 google.com      # 10 cycles then stop
```

#### Route Table Management
```bash
ip route show             # Show routing table
ip route show default     # Show default gateway
route -n                  # Numeric routing table (if net-tools installed)
# Add route (requires root):
# sudo ip route add 192.168.1.0/24 via 192.168.1.1
```

---

### 6. Network Interface Management

#### View Interfaces
```bash
ip link show              # Show all network interfaces
ip addr show              # Show interfaces with IP addresses
ls /sys/class/net/        # List network interface names
```

#### Interface Control (Requires Root)
```bash
# Modern commands:
sudo ip link set enp0s3 up     # Enable interface (replace enp0s3 with your interface)
sudo ip link set enp0s3 down   # Disable interface

# Traditional commands (if ifconfig available):
sudo ifconfig enp0s3 up        # Enable interface
sudo ifconfig enp0s3 down      # Disable interface
```

---

### 7. Network Statistics and Monitoring

#### Built-in Statistics
```bash
ss -s                     # Socket statistics summary
cat /proc/net/dev         # Network interface statistics
cat /proc/net/route       # Kernel routing table
cat /proc/net/tcp         # TCP connections
```

#### Advanced Monitoring (Install if Needed)
```bash
# Install monitoring tools:
sudo apt install iftop nethogs iperf3

iftop                     # Real-time network usage
nethogs                   # Network usage by process
iperf3 -s                 # Start iperf server
iperf3 -c server_ip       # Connect to iperf server

# Install speedtest:
sudo apt install speedtest-cli
speedtest-cli             # Internet speed test
```

---

### 8. Network Security Commands

#### Port Scanning (Install if Needed)
```bash
# Install nmap:
sudo apt install nmap

nmap localhost            # Scan local ports
nmap -p 22,80,443 google.com # Scan specific ports
nmap -sS 192.168.1.1      # SYN scan (requires root)
```

#### Firewall Management
```bash
sudo ufw status           # Ubuntu firewall status
sudo iptables -L          # List firewall rules
ss -tulpn | grep LISTEN   # Show listening services
sudo ufw enable           # Enable firewall
sudo ufw allow 22         # Allow SSH
```

---

### 9. Wireless Network Commands

#### NetworkManager (Ubuntu/Debian)
```bash
nmcli dev wifi list       # List available WiFi networks
nmcli dev status          # Show device status
nmcli connection show     # Show saved connections
nmcli dev wifi connect "SSID" password "password"  # Connect to WiFi
```

#### Traditional Wireless Tools (Install if Needed)
```bash
# Install wireless tools:
sudo apt install wireless-tools

iwconfig                  # Wireless interface configuration
iwlist scan               # Scan for wireless networks
iwlist wlan0 scan | grep ESSID  # Show WiFi names
```

---

### 10. Advanced Network Diagnostics

#### Packet Capture (Install if Needed)
```bash
# Install tcpdump:
sudo apt install tcpdump

# Capture packets (requires root):
sudo tcpdump -i any       # Capture on all interfaces
sudo tcpdump -i enp0s3 port 80  # Capture HTTP traffic
sudo tcpdump -c 10 host google.com  # Capture 10 packets to/from Google

# Install Wireshark (GUI):
sudo apt install wireshark
```

#### Network Performance Testing
```bash
# Install additional tools:
sudo apt install netcat-openbsd hping3

ping -f google.com        # Flood ping (requires root)
nc -zv google.com 80      # Test port connectivity
hping3 -S -p 80 google.com # Advanced ping tool
```

---

## 🎯 Linux Troubleshooting Workflow

### Step-by-Step Network Diagnosis

1. **Install Required Tools**
   ```bash
   sudo apt update
   sudo apt install net-tools traceroute dnsutils mtr-tiny
   ```

2. **Check IP Configuration**
   ```bash
   ip a                    # Show all interfaces
   hostname -I             # Show IP addresses
   ip route show default   # Show gateway
   ```

3. **Test Local Connectivity**
   ```bash
   ping -c 1 127.0.0.1     # Loopback test
   ping -c 1 $(ip route | grep default | awk '{print $3}')  # Gateway test
   ```

4. **Test Internet Connectivity**
   ```bash
   ping -c 4 8.8.8.8       # Google DNS
   ping -c 4 google.com    # DNS + connectivity
   ```

5. **Check DNS Resolution**
   ```bash
   nslookup google.com     # Basic DNS lookup
   dig google.com          # Detailed DNS info (if installed)
   cat /etc/resolv.conf    # DNS configuration
   ```

6. **Analyze Network Path**
   ```bash
   traceroute google.com   # Route tracing (if installed)
   mtr -c 5 google.com     # Continuous monitoring (if installed)
   ```

7. **Check Services and Ports**
   ```bash
   ss -tulpn               # Open ports
   ss -tulpn | grep :22    # Check SSH
   ```

---

## 📚 Linux Quick Reference

| Task | Command | Notes |
|------|---------|-------|
| Show IP | `ip a` | Always available |
| Test connectivity | `ping -c 4 8.8.8.8` | Built-in |
| Show ports | `ss -tuln` | Modern, always available |
| DNS lookup | `nslookup google.com` | Usually available |
| Trace route | `traceroute google.com` | Install: `sudo apt install traceroute` |
| Show interfaces | `ip link show` | Always available |
| Show gateway | `ip route show default` | Always available |
| Install tools | `sudo apt install net-tools dnsutils traceroute` | One-time setup |

---

## 🔍 Interview Questions & Answers

### Q: What is DNS?
**A:** Domain Name System - translates human-readable domain names (google.com) into IP addresses (172.217.164.110) that computers use to communicate.

### Q: What does ping test?
**A:** Ping tests network connectivity by sending ICMP echo requests to a target host and measuring response time, packet loss, and reachability.

### Q: Difference between TCP and UDP?
**A:** 
- **TCP:** Reliable, connection-oriented, guarantees delivery, slower (HTTP, SSH, FTP)
- **UDP:** Unreliable, connectionless, faster, no delivery guarantee (DNS, DHCP, streaming)

### Q: What is an IP address?
**A:** Unique numerical identifier assigned to each device on a network (IPv4: 192.168.1.1, IPv6: 2001:db8::1) used for routing and communication.

### Q: What is a port?
**A:** Logical endpoint for network communication, allowing multiple services on one IP address (HTTP:80, HTTPS:443, SSH:22, FTP:21).

---

## 🚀 Getting Started on Linux

1. **First, install essential tools:**
   ```bash
   sudo apt update
   sudo apt install net-tools traceroute dnsutils
   ```

2. **Start with basic commands:**
   ```bash
   ip a                    # Check your IP
   ping -c 4 8.8.8.8      # Test connectivity
   ss -tuln                # Check open ports
   ```

3. **Then try advanced features:**
   ```bash
   nslookup google.com     # DNS lookup
   traceroute google.com   # Trace network path
   ```