[Unit]
Description=Dhiraagu eKYC Admin App - UAT

[Service]
WorkingDirectory=/var/www/dhiraagu-ekyc-uat/admin-app
ExecStart=/usr/local/bin/serve --single /var/www/dhiraagu-ekyc-uat/admin-app -p 4010
Restart=always
RestartSec=10 # Restart service after 10 seconds if the dotnet service crashes:
SyslogIdentifier=dhiraagu-ekyc-admin-app-vue-uat

[Install]
WantedBy=multi-user.target