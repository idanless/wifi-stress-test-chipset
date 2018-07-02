for i in {1..31}
do
   echo wifi-c$i
   VBoxManage startvm "wifi-c$i" --type headless
   sleep 25
done
