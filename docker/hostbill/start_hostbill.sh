#!/bin/bash

chmod +x /home/hostbill
chmod -R 0777 /home/hostbill/var
mkdir -p /var/log/kolla/hostbill
/usr/bin/crontab -u hostbill /hostbill_cron
/usr/sbin/cron
/usr/sbin/nginx
/usr/sbin/php-fpm7.0
/usr/bin/memcached -p 11211 -u memcache -m 64