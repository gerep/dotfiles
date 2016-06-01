redshift -l -20.578719:-46.920754 &
xbindkeys &
feh --bg-scale ~/Pictures/triangle.png &
while true 
do
	# VOL=$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')
	LOCALTIME=$(date +%Z\=%d-%m-%YT%H:%M)
	IP=$(for i in `ip r`; do echo $i; done | grep -A 1 src | tail -n1) # can get confused if you use vmware
	if acpi -a | grep off-line > /dev/null
	then
		BAT="Bat. $(acpi -b | awk '{ print $4 " " $5 }' | tr -d ',')"
		xsetroot -name "$IP $BAT$LOCALTIME"
	else
		xsetroot -name "$IP $LOCALTIME"
	fi
	sleep 20s
done &
exec dwm
