# Nginx Configuration

To install Nginx using the Advanced Packaging Tool (`apt`), execute the following command:

```bash
sudo apt install nginx -y
```

The `-y` flag ensures automatic confirmation for any prompts during the installation process.

## Server Configuration Steps

**Restart Nginx Service:**
```bash
sudo service nginx restart
```
This command restarts the Nginx service, useful after configuration changes.

**Check Nginx Service Status:**
```bash
sudo service nginx status
```
Verify the status of the Nginx service:
```
Active: active (running)
```
This confirms that the Nginx server is operational and running smoothly. Enter `q` to quit.

**Start Nginx Service:**
```bash
sudo service nginx start
```
Use this command to manually start the Nginx service if it's not running.

**Stop Nginx Service:**
```bash
sudo service nginx stop
```
This command stops the Nginx service. Use it to temporarily halt Nginx operations.

---

# Nginx Configuration

#### [Get Sample Code](etc/nginx/sites-enabled/laravel.conf)


To ensure that the Nginx server configuration is applied every time the server runs, you'll need to move the configuration file to the appropriate directory and then reload or restart the Nginx service. Below are the steps to achieve this:

## **Move the Configuration File**:
   Move the Nginx server configuration file to the `/etc/nginx/sites-enabled` directory with the appropriate name (`laravel` in this case).

## **Restart Nginx**:
   Reload or restart the Nginx service to apply the changes.

Here's how you can do it:

```bash
# Move the configuration file to the appropriate directory
sudo mv /path/to/your/configuration/file /etc/nginx/sites-enabled/laravel

# Check Nginx configuration syntax for errors
sudo nginx -t

# If the syntax is correct, reload or restart Nginx to apply the changes
sudo systemctl reload nginx
```

Make sure to replace `/path/to/your/configuration/file` with the actual path to your Nginx configuration file.

here's a basic Nginx server block configuration that you can use for your Laravel application. You can create a new file using `sudo nano /etc/nginx/sites-enabled/{filename}` and paste the following configuration into it:

```nginx
server {
    listen 1313;                            # Listen for incoming connections on port 1313
    listen [::]:1313;                       # Listen for IPv6 connections on port 1313
    server_name example.com;                # Define the server name as example.com

    root /www/laravel;                      # Set the root directory for serving files to /www/laravel
    client_max_body_size 1024M;             # Set the maximum allowed size of client request bodies to 1024 megabytes

    location / {
        proxy_set_header Host $host;                            # Set the Host header to the value of the $host variable
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;  # Set the X-Forwarded-For header to the client's IP address
        proxy_set_header X-Forwarded-Proto $scheme;             # Set the X-Forwarded-Proto header to the request scheme (HTTP/HTTPS)
        proxy_pass http://localhost:1213;                        # Pass requests to the specified backend server (localhost:1213)

        error_page 404 /404.html;                               # Define a custom error page for 404 errors
        location = /404.html {                                  # Define the location for the custom 404 error page
            root /www/laravel;                                  # Set the root directory for serving the 404.html file
        }

        error_page 500 502 503 504 /50x.html;                  # Define custom error pages for 500, 502, 503, and 504 errors
        location = /50x.html {                                  # Define the location for the custom 50x error pages
            root /usr/share/nginx/html;                         # Set the root directory for serving the 50x.html file
        }
    }
}
``` 

This configuration block sets up an Nginx server listening on port 1313 for both IPv4 and IPv6 connections. Requests to the server with the hostname "example.com" are handled. The root directory for serving files is set to "/www/laravel", and the maximum allowed size of client request bodies is set to 1024 megabytes.

Requests to the root location ("/") are proxied to a backend server running on localhost at port 1213. Nginx sets the necessary headers for the proxying process, including the Host header, X-Forwarded-For header, and X-Forwarded-Proto header.

Custom error pages are defined for 404 (Not Found) and 500 (Internal Server Error) status codes. The 404 error page is served from the root directory ("/") with the filename "404.html". Similarly, custom error pages for 500, 502, 503, and 504 status codes are defined and served from the root directory ("/") with the filename "50x.html".