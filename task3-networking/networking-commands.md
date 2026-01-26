# Networking Commands Reference - Task 3

## 🔧 Essential Networking Commands

### 1. IP Configuration Commands

#### Windows
```cmd
ipconfig                    # Basic IP configuration
ipconfig /all              # Detailed network configuration
ipconfig /release          # Release IP address
ipconfig /renew            # Renew IP address
ipconfig /flushdns         # Clear DNS cache
```

#### Linux
```bash
ip a                       # Show all interfaces and IPs
ip addr show               # Same as above
ifconfig                   # Traditional interface configuration
ifconfig eth0              # Show specific interface
hostname -I                # Show system IP addresses
```

---

### 2. Connectivity Testing

#### Universal Commands
```bash
ping 8.8.8.8              # Test connectivity to Google DNS
ping google.com           # Test connectivity + DNS resolution
ping -c 4 8.8.8.8         # Linux: Send only 4 packets
ping -t 8.8.8.8           # Windows: Continuous ping
ping -n 10 8.8.8.8        # Windows: Send 10 packets
```

#### Advanced Ping Options
```bash
ping -i 2 google.com       # Linux: 2 second intervals
ping -s 1000 8.8.8.8       # Linux: Large packet size
ping -W 5000 8.8.8.8       # Linux: 5 second timeout
```

---

### 3. Port and Service Analysis

#### Windows
```cmd
netstat -an               # All connections and listening ports
netstat -b                # Show executable associated with each connection
netstat -r                # Show routing table
netstat -s                # Show statistics by protocol
```

#### Linux
```bash
ss -tuln                  # Modern replacement for netstat
ss -tulpn                 # Include process names
netstat -tuln             # Traditional command
netstat -tulpn            # With process information
lsof -i                   # List open files/network connections
```

#### Port-Specific Checks
```bash
ss -tulpn | grep :80      # Check if port 80 is open
netstat -an | findstr :443 # Windows: Check port 443
telnet localhost 22       # Test if SSH is running
```

---

### 4. DNS Resolution Commands

#### Basic DNS Lookup
```cmd
nslookup google.com       # Basic DNS lookup
nslookup google.com 8.8.8.8  # Use specific DNS server
```

```bash
dig google.com            # Detailed DNS query
dig @8.8.8.8 google.com   # Use specific DNS server
dig google.com MX         # Mail exchange records
dig google.com NS         # Name server records
dig google.com AAAA       # IPv6 addresses
dig +short google.com     # Short output format
``

#### DNS Cache Management
```cmd
ipconfig /displaydns      # Windows: Show DNS cache
ipconfig /flushdns        # Windows: Clear DNS cache
sudo systemctl flush-dns  # Linux: Clear DNS cache
```

---

### 5. Network Path Tracing

#### Route Tracing
```cmd
tracert google.com        # Windows: Trace route to destination
tracert -h 15 google.com  # Limit to 15 hops
```

```bash
traceroute google.com     # Linux: Trace network path
traceroute -m 20 google.com  # Maximum 20 hops
mtr google.com            # Linux: Continuous trace route
```

#### Route Table
```cmd
route print               # Windows: Show routing table
route add 192.168.1.0 mask 255.255.255.0 192.168.1.1  # Add route
```

```bash
ip route show             # Linux: Show routing table
route -n                  # Linux: Numeric routing table
ip route add 192.168.1.0/24 via 192.168.1.1  # Add route
```

---

### 6. Network Interface Management

#### Windows
```cmd
netsh interface show interface                    # List interfaces
netsh interface set interface "Ethernet" disabled # Disable interface
netsh interface set interface "Ethernet" enabled  # Enable interface
```

#### Linux
```bash
ip link show              # Show all network interfaces
ip link set eth0 up       # Enable interface
ip link set eth0 down     # Disable interface
ifconfig eth0 up          # Traditional enable
ifconfig eth0 down        # Traditional disable
```

---

### 7. Network Statistics and Monitoring

#### Connection Statistics
```cmd
netstat -s                # Protocol statistics
netstat -e                # Ethernet statistics
```

```bash
ss -s                     # Socket statistics
cat /proc/net/dev         # Network interface statistics
iftop                     # Real-time network usage
nethogs                   # Network usage by process
```

#### Bandwidth Testing
```bash
iperf3 -s                 # Start iperf server
iperf3 -c server_ip       # Connect to iperf server
speedtest-cli             # Internet speed test
```

---

### 8. Network Security Commands

#### Port Scanning
```bash
nmap localhost            # Scan local ports
nmap -p 80,443 google.com # Scan specific ports
nmap -sS 192.168.1.1      # SYN scan
```

#### Firewall (Linux)
```bash
ufw status                # Ubuntu firewall status
iptables -L               # List firewall rules
ss -tulpn | grep LISTEN   # Show listening services
```

---

### 9. Wireless Network Commands

#### Windows
```cmd
netsh wlan show profiles  # Show saved WiFi networks
netsh wlan show profile name="WiFiName" key=clear  # Show WiFi password
```

#### Linux
```bash
iwconfig                  # Wireless interface configuration
iwlist scan               # Scan for wireless networks
nmcli dev wifi list       # NetworkManager WiFi list
```

---

### 10. Advanced Network Diagnostics

#### Packet Capture
```bash
tcpdump -i eth0           # Capture packets on interface
tcpdump -i eth0 port 80   # Capture HTTP traffic
wireshark                 # GUI packet analyzer
```

#### Network Performance
```bash
ping -f google.com        # Flood ping (Linux)
hping3 -S -p 80 google.com # Advanced ping tool
nc -zv google.com 80      # Test port connectivity
```

---

## 🎯 Common Troubleshooting Workflow

1. **Check IP Configuration**
   ```bash
   ip a                    # Linux
   ipconfig               # Windows
   ```

2. **Test Local Connectivity**
   ```bash
   ping 127.0.0.1         # Loopback test
   ping gateway_ip        # Gateway connectivity
   ```

3. **Test Internet Connectivity**
   ```bash
   ping 8.8.8.8           # Google DNS
   ping google.com        # DNS + connectivity
   ```

4. **Check DNS Resolution**
   ```bash
   nslookup google.com    # DNS lookup
   dig google.com         # Detailed DNS info
   ```

5. **Analyze Network Path**
   ```bash
   traceroute google.com  # Route tracing
   mtr google.com         # Continuous monitoring
   ```

6. **Check Services and Ports**
   ```bash
   ss -tulpn              # Open ports
   netstat -an            # Active connections
   ```

---

## 📚 Quick Reference

| Task | Windows | Linux |
|------|---------|-------|
| Show IP | `ipconfig` | `ip a` |
| Test connectivity | `ping` | `ping` |
| Show ports | `netstat -an` | `ss -tuln` |
| DNS lookup | `nslookup` | `dig` |
| Trace route | `tracert` | `traceroute` |
| Show interfaces | `ipconfig /all` | `ip link show` |

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