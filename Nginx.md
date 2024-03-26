# Nginx Configuration

To start, let's access the server by obtaining the Private key and connecting via either PuTTY or WinSCP. Once you've opened a PuTTY session, execute the following commands to configure the server:

Firstly, update the server by running the following command in the Bash terminal:

```bash
sudo apt update -y
```

Here, `sudo` grants superuser privileges, `apt` refers to the Advanced Packaging Tool, and `update` initiates the update process. The `-y` flag automatically responds 'yes' to any prompts.

After updating, proceed to upgrade the server:

```bash
sudo apt upgrade -y
```

Similarly, the `upgrade` command updates all installed packages to their latest versions, and `-y` flag confirms all prompts automatically.

To install the Nginx server, utilize the `apt install` command along with the Nginx repository name and the `-y` flag to automatically confirm prompts:

```bash
sudo apt install nginx -y
```

This command installs Nginx using the Advanced Packaging Tool (`apt`). The `-y` flag ensures automatic confirmation for any prompts during the installation process.

After the installation, it's essential to verify that the Nginx service is running properly. You can do this using the `service` command followed by `nginx` and `status`:

```bash
sudo service nginx status
```

When you execute this command, if Nginx is running correctly, you should see a message indicating that it is active:

```
Active: active (running)
```

This confirms that the Nginx server is operational and running smoothly. put `q` to quite.


**Server Configuration Steps**

**5. Restart Nginx Service:**
```bash
sudo service nginx restart
```
This command restarts the Nginx service, useful after configuration changes.

**6. Check Nginx Service Status:**
```bash
sudo service nginx status
```
Verify the status of the Nginx service:
```
Active: active (running)
```
Ensures Nginx is operational.

**7. Start Nginx Service:**
```bash
sudo service nginx start
```
Use this command to manually start the Nginx service if it's not running.

**8. Stop Nginx Service:**
```bash
sudo service nginx stop
```
This command stops the Nginx service. Use it to temporarily halt Nginx operations.

---

[Link Text](readme.sh)




