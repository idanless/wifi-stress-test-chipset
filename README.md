<p align="center"><strong><u>wifi stress test chipset</u></strong></p>
<p><span lang="en-US"><img src="https://github.com/idanless/wifi-stress-test-chipset/blob/master/IMG_20180716_095608.jpg" alt="" width="800" height="500" /></span></p>
<p align="left">we got&nbsp;project from the company that we need to do performance test to check the&nbsp;limited of the chipset and the GW (memory , cpu ) but we have limited&nbsp;resources (<span lang="en-US">money :\ just for compre some solution cost 350,000 us dollar)&nbsp; so we come with plan how to do with less then 10k&nbsp;us dollar</span></p>
<p align="left">so we buy pc (usb 3.0) + 30 wifi&nbsp;adapters + 4 hub usb with&nbsp;power supply and go see how much crazy we are.</p>
<p align="left">&nbsp;</p>
<p align="left"><strong><u>start to works</u></strong></p>
<p align="left">for sure windows cannot do this test (cannot handle with&nbsp;<span lang="en-US">30 wifi&nbsp;adapters) so we take </span><span lang="en-US">Linux</span></p>
<p align="left">the issue here we must gui (because we want usnig this pc also for other stuff) and we want control&nbsp;</p>
<p align="left">on the order and limited</p>
<p align="left">&nbsp;</p>
<p align="left"><strong><span lang="en-US">we test 2 os for this job</span></strong></p>
<p align="left"><span lang="en-US">ubuntu 18.04&nbsp;</span></p>
<p align="left"><span lang="en-US">mint 18.2</span></p>
<p align="left"><span lang="en-US">on </span><strong><span lang="en-US">ubuntu</span></strong><span lang="en-US"> was issue on "networkmanager" gui he was stack every time and try load all the&nbsp;30 wifi&nbsp;adapters in the </span><span lang="en-US">sometime</span><span lang="en-US"> in </span><strong><span lang="en-US">mint</span></strong><span lang="en-US"> same story but mint not stack but take many&nbsp;resources and also try&nbsp;associate in the same&nbsp; time all the&nbsp;30 wifi&nbsp;adapters</span></p>
<p align="left">he&nbsp; take couple of hours but&nbsp;we solved the problem + control evey&nbsp;<span lang="en-US">adapter</span></p>
<p align="left"><span lang="en-US">we&nbsp;downgrade 1&nbsp;level to the driver&nbsp;layer and </span><strong><span lang="en-US">kill&nbsp;networkmanager&nbsp;</span></strong><span lang="en-US">now we can&nbsp;associate the wifi only in "wifi header"&nbsp;&nbsp;layer without network&nbsp;layer (very cool!) + debug it&nbsp;because we are on&nbsp;driver&nbsp;layer&nbsp;&nbsp;</span></p>
<p align="left"><u>next step&nbsp;</u></p>
<p align="left">we need&nbsp;create&nbsp;clients bind the&nbsp;wifi&nbsp;adapters so evey&nbsp;client will have 1 wifi and he can do&nbsp;traffic (also can be contorl by ssh) for this job we using "virtualbox" with "VBoxManage" that can configure and running vm in the&nbsp;background we install&nbsp;ubuntu server and&nbsp;associate it to every&nbsp;wifi&nbsp;adapter</p>
<p align="left">so now we have 30&nbsp;wifi&nbsp;adapters + 30 Vm&nbsp;&nbsp;</p>
<p align="left">challenge done !!!&nbsp;</p>
<p align="left">also&nbsp;many thanks for the help to my&nbsp;team number @<a href="https://github.com/Antonno">Anton</a></p>
<p align="left">&nbsp;</p>
<p align="left"><strong><span lang="en-US"><u>note :</u></span></strong></p>
<ol>
<li>&nbsp;<span lang="en-US">we </span><span lang="en-US">write</span><span lang="en-US"> script </span><span lang="en-US">running</span><span lang="en-US"> the test in&nbsp;easy way</span></li>
<li>because we have many&nbsp;<span lang="en-US">wifi&nbsp;adapters we&nbsp;choose&nbsp;&nbsp;associate on&nbsp;random ( avoid interference)</span></li>
<li><span lang="en-US">in the end the script tell you how much he try&nbsp;associate and in the end how much&nbsp;success<br /></span></li>
</ol>
<p><span style="text-decoration: underline;"><strong><span lang="en-US">screenshot</span></strong></span></p>
<p><span lang="en-US">how much wifi&nbsp;adapters try to&nbsp;associate</span></p>
<p><span lang="en-US"><img src="https://image.ibb.co/gHHvxJ/range.png" alt="" width="291" height="149" /></span></p>
<p><span lang="en-US">summary</span></p>
<p><span lang="en-US"><img src="https://image.ibb.co/nOwDHJ/info.png" alt="" width="165" height="164" /></span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="left">&nbsp;</p>
<p align="left">&nbsp;</p>
<p align="left">&nbsp;</p>
<p>&nbsp;</p>
