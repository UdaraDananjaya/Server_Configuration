# Setting Up PHP 7.4 and PHP 8.2 Alongside Composer

## **Installing PHP 7.4:**

```bash
sudo apt -y install php7.4
sudo apt install php-fpm php-mysql -y
```
### In Ubuntu 22 Add PHP Repository To add the PHP repository containing PHP 7.4, open a terminal and run the following command:

```bash
sudo add-apt-repository ppa:ondrej/php
sudo apt -y install php7.4
sudo apt install php-fpm php-mysql -y
```

**Checking PHP version:**
```bash
php -v
```

**Checking PHP-FPM status:**

```bash
service php7.4-fpm status
```

**Restarting PHP-FPM:**

```bash
service php7.4-fpm restart
```

**Installing additional PHP 7.4 modules:**

```bash
sudo apt install -y php-cli php-common php-gd php-mbstring php-curl php-xml php-bcmath openssl php-json php-tokenizer php-zip
```

---

## PHP 8.2 and Additional Configurations:

**Adding PHP 8.2 Repository:**

```bash
sudo add-apt-repository ppa:ondrej/php
sudo apt update -y && sudo apt upgrade -y
```

**Installing PHP 8.2 and PHP-FPM:**

```bash
sudo apt install php-fpm php-mysql -y
```

**Checking PHP version:**

```bash
php -v
```

**Checking PHP-FPM status:**

```bash
service php8.3-fpm status
```

**Restarting PHP-FPM:**

```bash
service php8.3-fpm restart
```

**Installing additional PHP 8.2 modules:**

```bash
sudo apt install openssl php-bcmath php-curl php-json php-mbstring php-xml php-zip -y
```

---

## Installing Composer:

**Downloading and Installing Composer:**

```bash
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
```

**Moving Composer to Global Path:**

```bash
sudo mv composer.phar /usr/local/bin/composer
```

**Running Composer (Optional):**

```bash
composer
```

If prompted, continue as root/super user by typing 'yes'.

---

This should set up Composer on your system. Adjust as needed!

After installing Composer, you can proceed to install Laravel. Here's the step-by-step guide:

1. **Install Laravel**:

Once Composer is installed, you can use it to install Laravel by running the following command:

```bash
composer global require laravel/installer
```

2. **Verify Installation**:

After the installation is complete, you can verify that Laravel was installed successfully by running:

```bash
laravel --version
```

This command should display the installed Laravel version, confirming that Laravel is installed correctly.

That's it! Laravel should now be installed on your system, and you can start creating Laravel projects using the Laravel CLI tool. Adjust the instructions as needed based on your system's requirements.
