# Basic LAN Setup With DHCP Server  Lab

[basic lan setup with dhcp server.pkt](basic_lan_setup_with_dhcp_server.pkt)

As a first project I will be building a basic LAN setup. This lab reinforces objectives 2.1–2.3 from the Network+ N10-009 exam, focusing on Ethernet-based LAN implementation, static IP configuration, and verifying connectivity between hosts using Layer 2 switching

LAN stands for Local Access Network, and it is a network that connects multiple devices together, e.g., phones, laptops and switches. 

![image.png](image.png)

### **Step 1: Add My Devices**

Firstly, I added my devices, which were a printer, three computers, a switch, a router, a wireless router, and finally a laptop. You can see from the image above that I set it out in terms of two separate networks: a wired network where my printer and three computers are connected by cables to my switch, which will send packets of data from the source MAC address to the destination MAC address; and my wireless network.

The IP address of the wired network is 192.168.1.0. My wireless network consists of my wireless router and laptop. The wireless and wired network share a router. In order for data packets to be successfully sent between these two networks, a default gateway must be set up. I’ll discuss how I set that up later on in this write-up.

---

### **Step 2: Connect My Devices to the Appropriate Switches and Routers**

Then I connected my devices — my three PCs and my printer — to the switch using a copper cable. I used a copper straight-through cable because a copper straight-through cable is used when connecting two different devices together. I also connected the switch and the router using a copper straight-through cable as well. However, the wireless and non-wireless router were connected using a copper cross-over cable, as they are similar devices.

---

### **Step 3: Set Up the Default Gateway**

In order for data to be successfully transmitted between a wired and wireless network, a default gateway must be set up. A default gateway allows for devices to communicate with other devices that are outside their network.

I did this by selecting the 2911 Router 0, as it is the router shared by the two networks. I selected the CLI option and began inputting commands.

The first important command I had to put in was `en`, which enables more control by changing the command terminal from `>` to `#`.

After that, I input `configure terminal`. This allows me to begin changing settings such as interface, routing, etc. Following this, I input `int gi0/0`, which allows me to start configuring the 2911 Router 0.

To set up my default gateway on this router, I then input the command `ip address 192.168.1.1 255.255.255.0`. This creates a new IP address for my default gateway, and the subnet mask `255.255.255.0` tells the device which part of the IP address is for the network and which part is for the host.

Following this, I input `exit`, and then `do wr` to save my settings. I then did the same for `gi0/01`, the wireless network, creating my default gateway IP address as `192.168.2.1`, and made sure to `exit` and `do wr` to save the changes. The cable arrows should switch from red to green, which confirms the changes I made.

---

### **Step 4: Set Up a DHCP Server**

To set up a DHCP server, which will automatically start assigning IP addresses, I made sure to `conf t` again to adjust settings.

After that, I input `ip dhcp pool` followed by the name of my wired network. This sets up the DHCP server for my wired network. Then to assign my IP address to this wired network, I input `network` followed by the IP address and `255.255.255.0`.

Afterwards, I needed to connect my default gateway to this server, so I input `default-network` followed by the gateway IP address. I pressed `exit` and `do wr`, then did the same thing for the wireless network.

---

### **Step 5: Configure the Wireless Router**

Then to configure the wireless router, I selected the router and changed the Wi-Fi name to **Office123**, changed the password, and set up **WPA2-PSK** security.

Afterwards, I went to the LAN settings and configured the IP address as `192.168.2.1` and subnet mask: `255.255.255.0`. To check if everything was working, I changed it to be the DHCP server and made sure it was receiving an IP address.

---

### **Step 6: Configure the PCs**

I then selected the PCs, and for each one I made sure the setting was changed to **DHCP**, to make sure the laptops were receiving an IP address.

---

### **Step 7: Set Up the Laptop**

To connect the laptop to the wireless network, I made sure to remove the Ethernet port and instead put in a device that could connect to the wireless network.

I did this by selecting the laptop and adjusting the physical settings. I then went to the Desktop tab, clicked PC Wireless, and connected to the wireless network **Office123**, making sure to input my password correctly.

---

### **Step 8: Set Up the Printer**

First, I needed to create a separate IP address for the printer that is static. The printer should have an IP in the same network as the other wired devices, but outside the DHCP pool to avoid conflicts.

For example, if my DHCP pool is from `192.168.1.2` to `192.168.1.100`, I can assign the printer an IP like `192.168.1.101`, which was my IP address for the printer.

After this, I adjusted the settings by unchecking the box that says **DHCP** to disable dynamic IP assignment. I then input my chosen IP address and subnet mask, put the default gateway as the router IP, and the DNS server as `8.8.8.8`.

---

### **Step 9: Check Everything is Working**

1. From **PC-0**, I opened the Command Prompt and typed:
    - `ipconfig` — to verify the assigned IP address (should be in the range of `192.168.1.x`)
    - `ping 192.168.1.1` — to check the connection to the router
2. From the **laptop**, I opened the Command Prompt and typed:
    - `ipconfig` — to ensure the IP is in the `192.168.2.x` range
    - `ping 192.168.2.1` — to check the wireless connection
3. **Test connectivity to the printer**:
    - I clicked on any of the PCs (e.g., PC-0), went to the Desktop tab, and opened the Command Prompt
    - I typed `ping 192.168.1.101` — the printer’s static IP address
4. If everything was configured correctly, I received **reply messages**, confirming that the PC could communicate with the printer.