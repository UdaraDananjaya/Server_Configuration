
 # Connecting to the Server and Updating/Upgrading

1.  **Accessing the Server and Updating:**

-  *Note:* Before configuring the server, ensure you have obtained the Private key and connected via PuTTY or WinSCP.
	```bash
	sudo apt update -y
	```
- This command updates the package index files from their sources, ensuring you have access to the latest versions of packages. The `-y` flag automatically confirms any prompts.

2.  **Upgrading the Server:**
	```bash
	sudo apt upgrade -y
	```
- This command upgrades all installed packages to their latest versions, ensuring your server has the most up-to-date software. The `-y` flag automates the confirmation of prompts.

**Installing Software:**

3.  **Installing Software via apt:**
	```bash
	sudo apt install {appName}  -y
	```
- Use this command to install any desired software using the Advanced Packaging Tool (`apt`). Replace `{appName}` with the name of the software package you wish to install. The `-y` flag automatically confirms any prompts during installation.

**Directory Navigation:**

4.  **Changing Directory:**
	```bash
	cd {directoryName}
	```
- Use the `cd` command followed by the directory name to navigate to a specific directory within the file system.

**Additional Commonly Used Commands:**

5.  **Printing Working Directory:**

	```bash
	pwd
	```
- This command displays the current directory path.
6.  **Text Editing with Nano:**
	```bash
	nano {fileName}
	```
- Nano is a simple text editor for Unix-like systems. Use it to edit configuration files and scripts directly from the terminal.

7.  **Viewing File Contents:**
	```bash
	cat {fileName}
	```
- Use the `cat` command to display the contents of a file on the terminal.
8.  **Creating a Directory:**
	```bash
	mkdir {directoryName}
	```
- Use `mkdir` followed by the directory name to create a new directory or folder.
9.  **Removing Files or Directories:**
	```bash
	rm {fileName}
	```
- Use `rm` followed by the file or directory name to delete it from the file system.
10.  **Copying Files or Directories:**
		```bash
		cp {source} {destination}
		```
- Use `cp` followed by the source and destination paths to copy files or directories from one location to another.
11.  **Moving or Renaming Files or Directories:**
		```bash
		mv {source} {destination}
		```

- Use `mv` followed by the source and destination paths to move files or directories from one location to another, or to rename them.

These commands provide a comprehensive toolkit for server configuration, management, and file system navigation.

 -  [Linux Service](Service.md)
	- [Laravel Service](etc/systemd/system/laravel.service)
    - [ASP.NET Service](etc/systemd/system/dotnet.service) 
    - [Vue Service](etc/systemd/system/vue.service) 
- Notes
	-  [Laravel Note](Laravel.md)
	-  [ASP.NET Note](ASP.NET.md)
	-  [Mariadb Note](Mariadb.md)
	-  [NodeJS Note](NodeJS.md)

 - Others
	- [Other Note](Other.md)
