nano /etc/nginx/nginx.conf
service nginx restart
service nginx status

 sudo systemctl daemon-reload
whereis php
sudo nano /etc/systemd/system/laravel.service
sudo service laravel restart
sudo service laravel status

systemctl --user enable example.service
systemctl --user start example.service
