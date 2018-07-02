wifilimited1() {
cat wifi-inter.txt | head -n $num | sort -R >tmplist
cat tmplist | while read int; 
do
sudo wpa_supplicant -B -i $int -c wpa_config.conf
sleep 3
echo $int
sleep 15
done
}


wififull1() {
num=31
cat wifi-inter.txt | head -n 31 | sort -R >tmplist
cat tmplist | while read int; 
do
sudo wpa_supplicant -B -i $int -c wpa_config.conf
sleep 3
echo $int
sleep 15
done
}


dhcp() {
cat tmplist | while read int; 
do
echo runnig dhcp for $int
dhclient -i $int
sleep 5
done
}


VMwifi() {
cat wifi-inter.txt | head -n $num | sort -R >tmplist
cat tmplist | while read int; 
do
sudo wpa_supplicant -B -i $int -c wpa_config.conf
sleep 3
echo $int
sleep 15
done
}

VMrun() {
for i in {1..31}
do
   echo wifi-c$i
   VBoxManage startvm "wifi-c$i" --type headless
   sleep 25
done
}




rfkill block wifi
rfkill unblock wifi
sudo /etc/init.d/network-manager start
sleep 1
sudo /etc/init.d/network-manager stop
#dhclient -r
sudo pkill wpa_supplicant
sleep 3
ssid=$(zenity --entry --text "SSID name?" --entry-text "SSID")
password=$(zenity --entry --text "password ssid?" --entry-text "password")
sudo wpa_passphrase $ssid $password > wpa_config.conf


radio=$(zenity --title "chose test type" --text "wifi list task" --list --radiolist --column "mark" --column "wifitype" False wifilimited False fullwifi False VMwifi)
	if [ $radio = wifilimited ]
then
	echo "run wifilimited"
	num=$(zenity --scale --text "pick a number" --min-value=1 --max-value=31 --value=1 --step 2)
	wifilimited1
	dhcp
	
elif [ $radio = fullwifi ]
then
	echo "run wifi full"
	wififull1
	dhcp

elif [ $radio = VMwifi ]
then
	echo "run VM-wifi"
	num=$(zenity --scale --text "pick a number" --min-value=1 --max-value=31 --value=1 --step 2)
	VMwifi
	echo "run vm"
	su -c "bash 30vm.sh" -s /bin/sh "write user"
	

else
	echo error
fi



sleep 10
#dhclient -r
#dhclient
associate=$(iwconfig 2>&1 | grep ESSID | grep $ssid | wc -l)
zenity --info --text "done up $num wifi \n associate success $associate"



