
**Configuring a Linux Service:**

1.  **Creating a systemd Service:**
-  *File Location:*  `/etc/systemd/system/{service_name}.service`
-  *Example Service File Contents:*
	```config
	[Unit]
	Description=My Custom Service

	[Service]
	WorkingDirectory=/var/www/
	ExecStart=/usr/bin/python3 /path/to/your/script.py
	RestartSec=10
	Restart=always

	[Install]
	WantedBy=multi-user.target
	```
-  *Explanation:* This systemd service file outlines the configuration for a custom service named "My Custom Service". The Unit section provides a brief description of the service. In the Service section, crucial parameters are defined: the working directory, set to `/var/www/`, from which the service will operate; the command to execute the service, specified as `/usr/bin/python3 /path/to/your/script.py`, indicating the execution of a Python script using Python 3; a restart delay of 10 seconds (`RestartSec=10`), and a restart policy set to `always`, ensuring the service restarts automatically upon exit. The Install section specifies that this service should be started when the system enters the `multi-user.target`, ensuring it launches automatically upon system boot. This comprehensive setup ensures the reliable operation and automatic management of the designated custom service within the system environment.

2.  **Enabling and Starting the Service:**

-  *Commands:*
	```bash
	sudo systemctl daemon-reload # Reload systemd to recognize the new service
	sudo systemctl enable {service_name}  # Enable the service to start on boot
	sudo systemctl start {service_name}  # Start the service immediately [sudo service {service_name} start]
	```

-  *Explanation:* After creating the service file, use these commands to enable and start the service. `daemon-reload` reloads systemd to recognize the new service file. `enable` configures the service to start on system boot, and `start` initiates the service immediately.

  

3.  **Checking Service Status:**

-  *Command:*  `sudo systemctl status {service_name}`

-  *Explanation:* Use this command to check the status of the service, including whether it's running, any errors, and recent log entries.

  

4.  **Stopping and Disabling the Service:**

-  *Commands:*
	```bash
	sudo systemctl stop {service_name}  # Stop the service [sudo service {service_name} stop]
	sudo systemctl disable {service_name}  # Disable the service from starting on boot
	```
-  *Explanation:* These commands halt the service (`stop`) and prevent it from starting automatically on system boot (`disable`).


By following these steps, you can create, manage, and monitor custom services on your Linux system using systemd

- `systemctl start [unit]`: Starts a specified unit (service).
- `systemctl stop [unit]`: Stops a specified unit (service).
- `systemctl restart [unit]`: Restarts a specified unit (service).
- `systemctl reload [unit]`: Reloads configuration of a specified unit (service).
- `systemctl enable [unit]`: Enables a specified unit (service) to start at boot time.
- `systemctl disable [unit]`: Disables a specified unit (service) from starting at boot time.
- `systemctl status [unit]`: Shows the current status of a specified unit (service).
- `systemctl list-units`: Lists all units (services) currently active or inactive.
- `systemctl list-unit-files`: Lists all available unit files and their states (enabled or disabled).

`systemctl` provides a unified interface to manage various aspects of the system's behavior and services, making it a powerful tool for system administrators and users alike.