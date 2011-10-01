# NGINX install and configuration on Ubuntu 10.10

## Prerequisites:

    sudo aptitude install libpcre3-dev libpcre3 openssl zlib1g zlib1g-dev

## Compile nginx

    ./configure --with-http_ssl_module
    make
    sudo make install

## While experimenting with nginx and changing configuration files, restart it with the command:

    sudo kill -HUP `cat /usr/local/nginx/logs/nginx.pid`

## To install it as an auto-start service in Ubuntu

1. git clone https://github.com/JasonGiedymin/nginx-init-ubuntu.git
2. sudo cp nginx /etc/init.d
3. sudo chmod +x /etc/init.d/nginx
4. Edit the script to make sure that the DAEMON variable is pointing to the right place (/usr/local/nginx/sbin/nginx)
5. sudo update-rc.d -f nginx defaults

## SSL

The SSL cert.* files are the same files generated using openssl for a self-signed certificate in Apache.

There are many guides on the web to show you how to do this.

## Basic Auth password file

The passwords file is also generated using apache htpasswd utility. 

This can be installed using the package apache2-utils in Ubuntu, or by installing apache2 itself. If you do install apache2, make sure to remove it from the startup scripts using:

    sudo update-rc.d -f apache2 remove

## Resources

http://wiki.nginx.org/Nginx-init-ubuntu
http://wiki.nginx.org/


