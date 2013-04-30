<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title><s:text name="qsg.title" /></title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link href="html/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <link href="favicon.ico" rel="icon" type="image/x-icon" />
  <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>

	<jsp:include page="Header.jsp" />

	<table>
		<tr>
			<td>
				<s:a href="index.jsp">
				<img src="html/images/cs-logo-146x50.png" 
					 alt="Community Squeeze Logo" 
					 width="146" height="50" />
				</s:a>
			</td>
			<td>
				<h2><s:text name="qsg.header" /></h2>
			</td>
		</tr>
	</table>

<hr />

<h3><s:text name="header.contents" /></h3>
<ol>
	<li><s:a href="#Introduction"><s:text name="header.introduction" /></s:a></li>
	<li><s:a href="#Downloading_the_CSOS_image_file">
	  Downloading the CSOS image file</s:a></li>
	<li><s:a href="#De-compressing_the_CSOS_image_file">
	  De-compressing the CSOS image file</s:a></li>
	<li><s:a href="#Writing_the_CSOS_image_file_to_a_MicroSD_card">
	  Writing the CSOS image file to a MicroSD card</s:a></li>
	<li><s:a href="#Installing_the_MicroSD_card_into_the_Wandboard">
	  Installing the MicroSD card into the Wandboard</s:a></li>
	<li><s:a href="#Powering_Up_the_Wandboard_for_the_first_time">
	  Powering Up the Wandboard for the first time</s:a></li>
	<li><s:a href="#Ethernet_IP_Address">
	  Ethernet IP Address</s:a></li>
	<li><s:a href="#Converting_to_Wireless">
	  Converting to Wireless (Wi-Fi) Operation</s:a></li>
</ol>
<hr />

<h3><span id="Introduction"><s:text name="header.introduction" /></span></h3>

<p>This document is intended to help new users with
the initial set up of a new SqueezeBox compatible device, using a Wandboard and
the Community Squeeze Operating System (CSOS).</p>

<p>After reading this document the new user be able to configure a Wandboard to be a
working SqueezeBox.</p>

<p>This guide is aimed at Windows PC users, and all
software mentioned and screen shots are from a Windows XP machine.</p>

<p>The reader will be taken through:</p>
<ul>
	<li>Obtaining the CSOS image file.</li>
	<li>Copying the CSOS image file onto a MicroSD card.</li>
	<li>Installing the MicroSD card into the Wandboard.</li>
	<li>Connecting up the Wandboard to your router, power supply and audio system.</li>
	<li>Booting up the Wandboard as a wired SqueezeBox device.</li>
	<li>Converting to wireless operation.</li>
</ul>
<hr />

<h3><span id="Downloading_the_CSOS_image_file">Downloading the CSOS image file</span></h3>

<p>Download the image using the link, 
<s:a href="http://www.communitysqueeze.org/images/wandboard/CSOS/CSOS-Wandboard-Dual-R3-20130412-1.img.7z">
CSOS-Wandboard-Dual-R3-20130412-1.img.7z</s:a>, and save the file somewhere 
convenient on your hard drive.</p>
<hr />

<h3><span id="De-compressing_the_CSOS_image_file">De-compressing the CSOS image file</span></h3>

<p>The CSOS image file is in a compressed format called
7-Zip. The CSOS image file will need to be de-compressed, to do this you
will need to use the 7-Zip program which can be downloaded from the 
<s:a href="http://www.7-zip.org/" target="blank_">7-Zip</s:a> website. 
</p>

<p>Once 7-Zip is installed run the 7-Zip file manager
and navigate to the location where you saved the image file. Right
click the image file and select, &quot;7-Zip-&gt;Extract Here&quot;, 
from the pop up context menu. The decompression may take some time to finish but
when it has finished you should see a file called
CSOS-Wandboard-Dual-R3-20130412-1.img in the same directory as your
downloaded file.</p>
<hr />

<h3><span id="Writing_the_CSOS_image_file_to_a_MicroSD_card">Writing the CSOS image file to a 
MicroSD card</span></h3>

<p>The Wandboard takes a MicroSD card, you'll need one of at least 4GB. 
</p>

<p>You will also need some method of connecting the
MicroSD card to your PC. You may need to buy a USB MicroSD adapter if
your PC doesn't currently have a MicroSD socket available.</p>

<p>Most laptop computers will have a standard SD
socket built in and adapters are available to allow MicroSD cards to
be used in standard SD sockets.</p>

<p>The image can be written to the MicroSD card from a Windows OS 
using a program called, 
<s:a href="http://sourceforge.net/projects/win32diskimager/"
     target="blank_">Win32DiskImager</s:a>. (Download either the 32 bit 
or 64 bit version depending on your OS.)</p>

<p>With the MicroSD card connected to your PC open up
the Win32DiskImager program.</p>

<p>
<img src="html/images/quick_start_guide/quickstart_html_1f96466c.png" 
     alt="Win32DiskImager" width="413" height="209" border="0" />
</p>

<p>Using the little blue folder icon navigate to the
location of your image file. Ensure that the device shown (in this
example &quot;E:\&quot;) is actually the MicroSD card). Then click
&quot;Write&quot;.</p>

<p>You will get a message saying that writing could
corrupt your card, but so long as you are sure the device is your
MicroSD card and there is nothing else important stored on the
MicroSD card then its safe to proceed. It will take several minuted
to complete the write, it's a large file!</p>

<p>When the image has been written to the MicroSD
card then a little dialog should pop up saying &quot;Complete&quot;
and &quot;Write&nbsp;successful&quot;, click &quot;OK&quot; and then 
&quot;Exit&quot; in the main Win32DiskImager window.</p>

<p>Remove the MicroSD card from the PC. You now have
the image on the MicroSD card.</p>
<hr />

<h3><span id="Installing_the_MicroSD_card_into_the_Wandboard">Installing the MicroSD card into 
the Wandboard</span></h3>

<p>There are 2 MicroSD card slots on the Wandboard,
one on the CPU board and one one the carrier card. We need to insert
our MicroSD card into the slot on the CPU board see big red arrow in
photograph. The MicroSD card will only fit in the slot one way and it
will spring in and latch in place with hardly any force required. To
remove push it in a little further and it will spring out.</p>
<p>

<p>
<img src="html/images/quick_start_guide/quickstart_html_m65b7e473.jpg" 
     alt="Wandboard SDCARD" width="643" height="559" border="0" />
</p>
<hr />

<h3><span id="Powering_Up_the_Wandboard_for_the_first_time">Powering Up the Wandboard for 
the first time</span></h3>

<p>The first time you power up the Wandboard you need
to have it connected to your network using a wired (Ethernet) cable.
This is because the wireless network connection needs to be
configured, before it can be used. This will be covered later in this
document.</p>

<p>The following picture shows the Wandboard
connected up with a wired ethernet cable, power cable and 3.5mm
analogue audio output. The minimum needed to get the Wandboard
working as a SqueezeBox.</p>

<p>
<img src="html/images/quick_start_guide/quickstart_html_m781f8cd3.jpg" 
     alt="Wandboard connections" width="643" height="687" border="0" />
</p>
<hr />

<h3><span id="Ethernet_IP_Address">Ethernet IP Address</span></h3>

<p>Configuring the Wandboard is done using your
favourite internet browser (e.g.  Chrome, Firefox or Internet
Explorer). To connect to the web-server inside the Wandboard you will
need to know it's IP address.</p>

<p>When the power is applied the Wandboard should
boot and if connected to a router it should normally be allocated an
IP address automatically by the router using DCHP. 
</p>

<p>Each type of router is different so it's not
possible to give detailed instruction here but you will usually be
able to find out the IP address that's been allocated to the
Wandboard by pointing your internet browser at your router (usually
192.168.0.1 or 192.168.1.1) and then using &quot;admin&quot; and
your password to gain access. Once you've gained access to the router
it is usually possible to find a list of connected devices and their
IP address by looking through the menus provided by the router.</p>

<p>Another option for finding the IP address, if you
can't get it from your router is to use a network scanning utility
such as 
<s:a href="http://www.softperfect.com/products/networkscanner/"
     target="blank_">Network Scanner</s:a>.
</p>

<p>
Be careful with the download, the one you want is from a link on
the left hand side of the page called &quot;Download Network
Scanner&quot;, there is other stuff on the page that you might not
want!</p>

<p>Network Scanner is very easy to use, the following
screen shot shows the main window set up to scan for all addresses in
the range 192.168.0.0 to 192.168.1.255 which should cover most home
networks.</p>

<p>
<img src="html/images/quick_start_guide/quickstart_html_434f1a83.jpg" 
     alt="Network Scanner" width="643" height="484" border="0" />
</p>

<p>The Wandboard doesn't have a host name like some
of the machines shown above. A relatively easy way to work out which
address is the Wandboard would be to run the scan with the Wandboard
disconnected from the router, make a note of all the IP address from
the scan, reconnect the Wandboard, run the scan again and look for
the new address in the list. The new address should be the Wandboard.</p>

<p>Once you've discovered the IP of your Wandboard
point your browser at the IP address but add &quot;:8080&quot;
directly after the last number of the IP address (don't forget the
colon). The picture below shows a browser connected to the Wandboard,
remember the IP address of your Wandboard is likely to be different
to the one shown.</p>

<p>
<img src="html/images/quick_start_guide/quickstart_html_337f0344.jpg" 
     alt="CSOS Web-GUI" width="643" height="609" border="0" />
</p>

<p>If you can see a page similar to the one shown, 
then your Wandboard should now be working as a wired SqueezeBox. 
</p>

<p>To access your new SqueezeBox device you can use either a
smartphone or tablet and one of the various applications that are
available from the app stores, (eg.
<s:a href="https://play.google.com/store/apps/details?id=com.logitech.squeezeboxremote" 
     target="blank_">Logitech Squeezebox Controller</s:a>,  
<s:a href="http://penguinlovesmusic.de/ipeng-the-iphone-skin-for-squeezecenter/" 
     target="blank_">iPeng</s:a>, 
or 
<s:a href="http://orangebikelabs.com/products/orangesqueeze/" 
     target="blank_">Orange Squeeze</s:a>), or you
can use the LMS web interface on your SqueezeBox server. You cannot use
(at the moment) your infra-red remote.</p>

<p>By default the Wandboard SqueezeBox will be called
SqeezeliteWAND, you should now be able to select this player and play
some tunes!</p>
<hr />

<h3><span id="Converting_to_Wireless">Converting to Wireless (Wi-Fi) Operation</span></h3>

<p>The Wandboard comes with wireless (Wi-Fi) already on the circuit board, 
however to make it work reliably you will need to add a Wi-Fi antenna such 
as the one available from all of the Wandboard suppliers. 
The antenna connects to the Wandboard using a short flying lead. 
The flying lead connects to the antenna at one end and to a tiny socket on the Wandboard at the other. 
Connecting the flying lead to the Wandboard can be a bit fiddly but when you get them lined up correctly 
they will make connection with just a a little pressure resulting in a slight click.</p>  

<p>
<img src="html/images/quick_start_guide/quickstart_html_aerial_socket.jpg" 
     alt="Wandboard aerial socket location" 
     width="695" height="620" border="0" />
</p>

<p>
Once the antenna is connected, power up the Wandboard making sure it's still connected to a wired network. 
This because we need to configure the wireless networking and that has to be done using a wired network.</p>

<p>Point your internet browser at the CSOS configuration page (as shown in the previous section). 
Near the top you should see a menu, &quot;Wireless&nbsp;Interface&quot;. 
Click on it and you will be taken to the wireless interface configuration page.</p>

<p>On the wireless interface configuration page look for a drop-down box, &quot;Network&nbsp;Name&quot;. 
(You may need to scroll down to see it depending on the size of your browser window). 
If you click on the drop down you should then see a list of all the wireless networks that the Wandboard can see. 
Hopefully your wireless network is in the list. 
If not, it's possible that its been hidden in your routers configuration, 
if so you'll need to consult your routers documentation as it's beyond the scope of 
this document to detail how to make your network visible.</p>

<p>Assuming that you can see your network, select it. If your network is protected by a password, 
then you will need to enter the password in the text box named &quot;Wireless&nbsp;Password&quot;. 
Currently only WPA security is supported, if your wireless network is using 
WEP security you might need to change it to WPA to get the Wandboard to work, 
again consult your routers documentation.</p>

<p>When you've entered your network name and password you can click on the 
&quot;Save&nbsp;and&nbsp;Reboot&quot; button further down the page. Note that there is further help 
and information in the Notes section at the bottom of the wireless configuration page.</p>

<p>When the Wandboard has rebooted, turn the power off,
 disconnect the wired connection to your router and then turn the power back on.</p>
 
<p>It is quite likely that your router will now allocate the Wandboard a
 different IP address when it's using the wireless network,
 so you might have to go through the instructions in the 
 <s:a href="#Ethernet_IP_Address">Ethernet IP Address</s:a> 
 again before the CSOS page can be viewed again.</p>
 
<p>If you are using one of the iOS or Android apps it's quite likely
 that the app will auto discover the Squeezelite running on the
 Wandboard so you might be able to start it playing music without
 knowing the new IP address.</p>
<hr />

<h3><s:text name="header.author" /></h3>

<p>This guide was contributed by Ian Marks, a.k.a 
<s:a href="http://forums.slimdevices.com/member.php?8264-Stoker" 
     target="blank_">Stoker</s:a> on the 
<s:a href="http://forums.slimdevices.com" target="blank_">SlimDevices Forum.</s:a>
</p>

<hr />
<jsp:include page="Footer.jsp" />

</body>
</html>