killall -9 picom python3 polybar dunst cava 
dunst -config $HOME/.config/i3/dunstrc &

picom --config $HOME/.config/i3/picom.conf & #start picom
# python3 ~/.config/i3/xborder/xborders --config ~/.config/i3/xborder/config.json & #start xborder
sh /home/bd26/.config/polybar/launch.sh & #start polybar


#Start Xfce-polkit
if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi
