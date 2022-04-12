MONITORS=$(bspc query -M --names | wc -l)

if [[ $MONITORS > 1 ]]; then 
	xrandr --output DP-0 --auto --output HDMI-0 --auto --left-of DP-0
	bspc monitor DP-0 -d I II III IV V 
	bspc monitor HDMI-0 -d VI VII VIII IX X 
else 
    bspc monitor DP-0 -d I II III IV V VI VII VIII IX X
fi 
