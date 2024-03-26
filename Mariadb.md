# Setting Up MariaDB Server:

To install MariaDB Server and secure its installation

```bash
sudo apt install mariadb-server -y
```

Run the command mysql_secure_installation to secure the MariaDB installation. Follow the prompts:

```bash
# Switch to root user
sudo -i

# Run MariaDB secure installation script
mysql_secure_installation

# Follow the prompts:
# Set root password? [Y/n] Y
# Remove anonymous users? [Y/n] n
# Disallow root login remotely? [Y/n] n
# Remove test database and access to it? [Y/n] n
# Reload privilege tables now? [Y/n] Y
```

**Access MariaDB:**

Once the installation and setup are complete, access the MariaDB prompt:

```bash
# Switch to root user
sudo -i

mariadb
```