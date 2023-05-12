killall -9 picom python3 polybar dunst
# killall -9 picom
picom --config $HOME/.config/picom/picom.conf &
dunst -config $HOME/.config/i3/dunstrc &

sh /home/bd26/.config/polybar/launch.sh



python3 ~/.config/i3/xborder/xborders --config ~/.config/i3/xborder/a.json &

if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi
