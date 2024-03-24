Sure, here's a revised version of the server configuration script:

```bash
# Update the server
sudo apt update -y

# Upgrade the server packages
sudo apt upgrade -y

# Install Nginx server
sudo apt install nginx -y

# Verify Nginx service status
sudo service nginx status
```

In this script:

- We update the server using `sudo apt update -y` to ensure all package lists are updated, with the `-y` flag automatically answering 'yes' to prompts.
- Next, we upgrade the server packages using `sudo apt upgrade -y` to install the latest versions of all packages.
- Then, we install Nginx using `sudo apt install nginx -y`, ensuring the `-y` flag automatically confirms prompts during installation.
- Finally, we verify the status of the Nginx service with `sudo service nginx status`. If Nginx is running properly, it will display an "Active: active (running)" message. 