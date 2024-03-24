nano /etc/nginx/nginx.conf

sudo service nginx restart
sudo service nginx status
sudo service nginx start
sudo service nginx stop

 sudo systemctl daemon-reload
whereis php
sudo nano /etc/systemd/system/laravel.service
sudo service laravel restart
sudo service laravel status

systemctl --user enable example.service
systemctl --user start example.service
