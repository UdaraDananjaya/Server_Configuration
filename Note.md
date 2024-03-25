Yes, you can convert the plain text configuration you provided into a standard `.service` file format typically used in systemd on Linux systems. Here's how you can structure it:

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

Save this content into a file with a `.service` extension, for example, `my_custom_service.service`. Then, you can move this file to the appropriate directory where systemd expects unit files. This is typically `/etc/systemd/system/`.

After moving the file, you need to reload systemd to pick up the new service:

```bash
sudo systemctl daemon-reload
```

Then, you can start, stop, enable, or disable your service like any other systemd service:

```bash
sudo systemctl start my_custom_service
sudo systemctl stop my_custom_service
sudo systemctl enable my_custom_service
sudo systemctl disable my_custom_service
```

Replace `my_custom_service` with the name you chose for your service file.