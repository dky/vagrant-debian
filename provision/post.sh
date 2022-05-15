#!/bin/bash

# Disable WPA
sudo systemctl stop wpa_supplicant 
sudo systemctl disable wpa_supplicant
