
**Configuring a Linux Service:**

1.  **Creating a systemd Service:**
-  *File Location:*  `/etc/systemd/system/{service_name}.service`
-  *Example Service File Contents:*
	```config
	[Unit]
	Description=My Custom Service
	After=network.target

	[Service]
	Type=simple
	ExecStart=/usr/bin/python3 /path/to/your/script.py
	Restart=always

	[Install]
	WantedBy=multi-user.target
	```
-  *Explanation:* This example creates a systemd service named `{service_name}`. Adjust the `Description`, `ExecStart`, and other parameters according to your specific service requirements. The `After` directive ensures the service starts after the network is up, and `Restart=always` ensures the service restarts automatically if it crashes.

  

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