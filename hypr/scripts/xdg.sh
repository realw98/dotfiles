#!/bin/bash
killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-kde
killall -e xdg-desktop-portal-gtk
killall -e xdg-desktop-portal

echo "Starting xdg-desktop-portal-hyprland"

sleep 0.5
/usr/lib/xdg-desktop-portal-hyprland &
sleep 0.5
/usr/lib/xdg-desktop-portal-kde &
sleep 0.5
/usr/lib/xdg-desktop-portal &
