#!/bin/bash


systemctl stop apache2
systemctl stop grafana-server
systemctl stop prometheus
systemctl stop nginx
snap stop rocketchat-server

systemctl disable apache2
systemctl disable grafana-server
systemctl disable prometheus
systemctl disable nginx
snap disable rocketchat-server


apt-get remove --purge apache2 grafana-server prometheus nginx


rm -rf /etc/apache2
rm -rf /etc/grafana
rm -rf /etc/prometheus
rm -rf /etc/nginx
rm -rf /etc/rocketchat

echo "¡Listo! Los servicios relacionados con Apache, Grafana, Prometheus y Nginx han sido detenidos, deshabilitados y eliminados del sistema."
