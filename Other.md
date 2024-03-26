### Network Management Commands and Tools

#### `netstat` Command

The `netstat` command provides valuable insights into network connections, routing tables, interface statistics, and more. Here's a breakdown of its usage:

- **Syntax**: `netstat [options]`
  
- **Options**:
  - `-p`: Display PID and program names.
  - `-a`: Show all sockets, both listening and non-listening.
  - `-n`: Display numerical addresses.
  - `-t`: Show TCP connections.
  - `-u`: Show UDP connections.
  - `-l`: Show only listening sockets.
  - `-e`: Display extended information.
  
- **Examples**:
  1. Display TCP connections and listening ports with PID and program names: `netstat -pant`
  2. Show active UDP connections and listening ports: `netstat -uan`
  3. View routing table information: `netstat -r`
  4. Get statistics for network interfaces: `netstat -i`
  
- **Additional Notes**:
  - `netstat` may be deprecated on Linux systems in favor of `ss`.
  - For detailed usage, refer to the manual page: `man netstat`

#### Network Maintenance Commands

To ensure your system's package management remains healthy, consider these maintenance commands:

1. **Fix Broken Dependencies**:
   ```bash
   sudo apt --fix-broken install
   ```

2. **Clean Local Repository**:
   ```bash
   sudo apt clean
   ```

3. **Update Package Index**:
   ```bash
   sudo apt update
   ```

4. **Remove Unused Packages**:
   ```bash
   sudo apt autoremove
   ```

5. **Clean Obsolete Package Files**:
   ```bash
   sudo apt autoclean
   ```

6. **Reconfigure Unfinished Packages**:
   ```bash
   sudo dpkg --configure -a
   ```

#### Network Management Tools Installation

For network diagnostics and management, consider installing these additional tools:

- **Install `net-tools`**:
  ```bash
  sudo apt install net-tools
  ```

- **Install `ss` (Socket Statistics)**:
  ```bash
  sudo apt install iproute2
  ```

These tools provide comprehensive network information and are essential for network troubleshooting and management.