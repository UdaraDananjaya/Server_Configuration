#step 1 
sudo apt update -y
sudo apt upgrade -y


sudo apt install nginx -y

sudo service nginx status
# enter q for quite in sudo service nginx status

# Allow HTTP  trafic
# http://34.207.235.51/

# config nginx
#change directroy using cd command
cd /etc/nginx/sites-enabled/
ls #list item

#duplicate default configration file using
sudo cp default laravel

#edit that copied file laravel
sudo nano laravel

#change that laravel configrartin file using this github repository etc\nginx\sites-enabled\laravel.conf

#or we can create new file  name called vue
sudo nano /etc/nginx/sites-enabled/vue

# installs NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

#make enviropment vartable to nvm
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# download and install Node.js
nvm install 18

# verifies the right Node.js version is in the environment
node -v # should print `v18.19.1`

# verifies the right NPM version is in the environment
npm -v # should print `10.2.4`


#make git clone project
git clone https://github.com/Udara-Dananjaya/Internship-Sample.git
git clone --branch <branchname> <remote-repo-url>

cd Internship-Sample
git checkout FrontEnd-Vue
git pull origin FrontEnd-Vue
npm install
 npm run serve -- --port 1213

#check 

npm install -g serve


serve --single  -p 1213
ExecStart=/usr/local/bin/serve --single /var/www/dhiraagu-ekyc-uat/admin-app -p 4010



#After runng we need to reset nginx
sudo service nginx restart


netstat -pant





#optional 

# fix-broken
sudo apt --fix-broken install  

#clean 
sudo apt clean
sudo apt update
sudo apt autoremove
sudo apt autoclean
sudo dpkg --configure -a
