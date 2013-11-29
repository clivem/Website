<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title><s:text name="repo.title" /></title>
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
				<h2><s:text name="repo.header" /></h2>
			</td>
		</tr>
	</table>

<hr />

<h3><s:text name="header.contents" /></h3>
<ol>
	<li><s:a href="#Introduction"><s:text name="header.introduction" /></s:a></li>
	<li><s:a href="#Installation"><s:text name="header.installation" /></s:a></li>
	<li><s:a href="#Configure_LMS"><s:text name="header.configureLMS" /></s:a></li>
	<li><s:a href="#Systemd"><s:text name="header.systemd" /></s:a></li>
	<li><s:a href="#LMS_Log_Files"><s:text name="header.lmsLogFiles" /></s:a></li>
	<li><s:a href="#Author"><s:text name="header.author" /></s:a></li>
</ol>
<hr />

<h3><span id="Introduction"><s:text name="header.introduction" /></span></h3>

<p>The Community Squeeze Software Repository (repo) provides packages for Fedora 19 i686 and x86_64, 
Vortexbox 2.2 (Fedora 16), and the Fedora 19 ARM CSOS for Wandboard release.</p>

<p>It is not a stand-alone repository. The Fedora 19 packages for all platforms depend on the RPMFusion repository and 
in the case of the Fedora 16 packages for Vortexbox 2.2, they depend on the VortexBox repository, which in turn depends on 
the ATRpms repository.</p>

<p>When running any of the commands below, you should do so as root or using sudo.
</p>

<h5>Fedora 19 Firewall Daemon</h5>

<p>Fedora 19 installs firewalld, (a firewall daemon), and the default zone is set to &quot;public&quot; which is quite 
restrictive. It will block your squeezebox client(s) from connecting to the server. You don't need to disable firewalld, 
just set the zone for your local (internal) network interface to be &quot;trusted&quot;. Click on the desktop tray network 
icon. Then select your LAN network interface and click the options button. On the first tab of the configuration dialog, 
&quot;General&quot;, there is a drop-down to choose the Firewall Zone. Set it to &quot;trusted&quot; and save.
</p>

<p>Alternatively, you can run &quot;firewall-config&quot;, and then 
&quot;Options&minus;&gt;Change&nbsp;Default&nbsp;Zone&quot; to &quot;trusted&quot;. 
(You should only do this if you have a firewall between your LMS server and the internet, as it effectively disables 
firewalling for all network interfaces!)
</p>

<p>Or disable firewalld altogether. (Again, you should only do this if you have a firewall between your LMS server and the 
internet!)
</p>
<pre class="terminal">sudo systemctl stop firewalld.service
sudo systemctl disable firewalld.service
</pre>

<hr />

<h3><span id="Installation">Community Squeeze Repo and LMS <s:text name="header.installation" /></span></h3>

<h5><span id="Fedora_19_Wandboard">Fedora 19 CSOS for Wandboard</span></h5>

<p>If you are using the Fedora 19 CSOS for Wandboard software image there is no need to install any of the repo packages. 
They are pre-installed. The LMS packages are also pre-installed. 
LMS needs to be enabled and started, either via the CSOS Web Configuration Interface or from the command line.
</p>
<pre class="terminal">sudo systemctl enable squeezeboxserver.service
sudo systemctl start squeezeboxserver.service
</pre>

<h5><span id="Fedora_19_i686_and_x86_64">Fedora 19 i686 and x86_64</span></h5>

<p>If you have previously installed a Logitech provided LMS (logitechmediaserver) rpm package, remove it! 
(The support issues so far have been due to people doing all sorts of wierd and wonderful things to try and get the 
Logitech package working with perl 5.16.2.)</p>

<pre class="terminal">sudo yum remove logitechmediaserver
</pre>

<p>The Community Squeeze Fedora 19 repo depends on RPMFusion for the codec dependencies. 
Install the RPMFusion repo packages.
</p>
<pre class="terminal">sudo yum -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-19.noarch.rpm
sudo yum -y install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-19.noarch.rpm
</pre>

<p>Then install the Community Squeeze Fedora 19 repo package, followed by the LMS package. 
(Don't be concerned that multiple packages are being installed, rather than a single logitechmediaserver package. 
The LMS server is actually comprised of 3 packages: base (noarch), vendor (arch specific) and CPAN (arch specific). 
Several perl packages are dependencies. Plus codec packages for transcoding.)
</p>
<pre class="terminal">sudo yum -y install http://www.communitysqueeze.org/repo/community-squeeze-repo.noarch.rpm
sudo yum -y install logitechmediaserver
</pre>

<h5>VortexBox 2.2 (Fedora 16)</h5>

<p>Coming Soon...</p>

<hr />

<h3><span id="Configure_LMS"><s:text name="header.configureLMS" /></span></h3>

<p>When the install finishes, point your web browser at http://LMS_SERVER_IP:9000 to configure the 
LMS music/playlist directory locations and initiate a scan.
</p>

<hr />

<h3><span id="Systemd"><s:text name="header.systemd" /></span></h3>

<h5>Command Line Reference</h5>

<p>The Community Squeeze LMS package uses a native systemd service file rather than a traditional rc.d init script. 
The service is enabled and started, (except for the CSOS for Wandboard software image where it needs to be enabled 
and started), when the package is installed and will be automatically started after every subsequent reboot. 
(The following is for reference only.)
</p>

<p>To disable the service, so that it doesn't start automatically when you boot.
</p>
<pre class="terminal">sudo systemctl disable squeezeboxserver.service
</pre>

<p>To enable, so that it does start automatically after boot. (Only needed if you have previously disabled the service.)
</p>
<pre class="terminal">sudo systemctl enable squeezeboxserver.service
</pre>

<p>To manually stop the service.
</p>
<pre class="terminal">sudo systemctl stop squeezeboxserver.service
</pre>

<p>To manually start the service.
</p>
<pre class="terminal">sudo systemctl start squeezeboxserver.service
</pre>

<p>To manually restart, (stop and start), the service. (Which you will need to do, eg. if you edit 
<i>/etc/squeezeboxserver/convert.conf</i>, or create a new <i>/etc/squeezeboxserver/custom-convert.conf</i>, 
the changes will not be recognised by LMS until it has been restarted.)
</p>
<pre class="terminal">sudo systemctl restart squeezeboxserver.service
</pre>

<hr />

<h3><span id="LMS_Log_Files"><s:text name="header.lmsLogFiles" /></span></h3>

<p>The LMS log files, <i>server.log</i> and <i>scanner.log</i>, (which should be your first port of call before reporting 
any issues), are located in <i>/var/log/squeezeboxserver</i>. 
</p>

<hr />

<h3><span id="Author"><s:text name="header.author" /></span></h3>

<p>This guide was contributed by 
<s:a href="http://forums.slimdevices.com/member.php?3069-JackOfAll" 
     target="blank_">JackOfAll</s:a>.
</p>

<hr />
<jsp:include page="Footer.jsp" />

</body>
</html>