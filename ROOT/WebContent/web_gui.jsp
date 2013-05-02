<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title><s:text name="webGui.title" /></title>
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
				<h2><s:text name="webGui.header" /></h2>
			</td>
		</tr>
	</table>

<hr />

<h3><s:text name="header.contents" /></h3>
<ol>
	<li><s:a href="#Introduction"><s:text name="header.introduction" /></s:a></li>
	<li><s:a href="#System"><s:text name="header.system" /></s:a></li>
	<li><s:a href="#Ethernet"><s:text name="header.wired" /></s:a></li>
	<li><s:a href="#Wireless"><s:text name="header.wireless" /></s:a></li>
	<li><s:a href="#Squeezelite"><s:text name="header.squeezelite" /></s:a></li>
	<li><s:a href="#SqueezeServer"><s:text name="header.squeezeserver" /></s:a></li>
	<li><s:a href="#FileSystems"><s:text name="header.fstab" /></s:a></li>
	<li><s:a href="#Shutdown"><s:text name="header.shutdown" /></s:a></li>
	<li><s:a href="#FAQ"><s:text name="header.faq" /></s:a></li>
	<li><s:a href="#Help"><s:text name="header.help" /></s:a></li>
	<li><s:a href="#Author"><s:text name="header.author" /></s:a></li>
</ol>
<hr />

<h3><span id="Introduction"><s:text name="header.introduction" /></span></h3>

<p>The Community Squeeze Web Configuration Interface is used to configure and control services.</p>

<p>
<img src="html/images/web_gui/csos-web-gui_640x522.png" 
     alt="CSOS Web Configuration Inderface: Index" 
     width="640" height="522" border="1" />
</p>

<hr />

<h3><span id="System"><s:text name="header.system" /></span></h3>

<p>System Configuration
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-system_640x448.png" 
     alt="CSOS Web Configuration Inderface: System Configuration" 
     width="640" height="488" border="1" />
</p>

<hr />

<h3><span id="Ethernet"><s:text name="header.wired" /></span></h3>

<p>Ethernet Interface Configuration
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-ethernet_640x693.png" 
     alt="CSOS Web Configuration Inderface: Ethernet Interface Configuration" 
     width="640" height="693" border="1" />
</p>

<hr />

<h3><span id="Wireless"><s:text name="header.wireless" /></span></h3>

<p>Wireless Interface Configuration
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-wireless_640x693.png" 
     alt="CSOS Web Configuration Inderface: Wireless Interface Configuration" 
     width="640" height="693" border="1" />
</p>

<hr />

<h3><span id="Squeezelite"><s:text name="header.squeezelite" /></span></h3>

<p>Squeezelite Player Configuration and Control
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-squeezelite_640x695.png" 
     alt="CSOS Web Configuration Inderface: Squeezelite Player Configuration and Control" 
     width="640" height="695" border="1" />
</p>

<hr />

<h3><span id="SqueezeServer"><s:text name="header.squeezeserver" /></span></h3>

<p>Squeeze Server Control
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-squeeze-server_640x566.png" 
     alt="CSOS Web Configuration Inderface: Squeeze Server Control" 
     width="640" height="566" border="1" />
</p>

<hr />

<h3><span id="FileSystems"><s:text name="header.fstab" /></span></h3>

<p>File Systems
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-file-systems_640x633.png" 
     alt="CSOS Web Configuration Inderface: File Systems" 
     width="640" height="633" border="1" />
</p>

<hr />

<h3><span id="Shutdown"><s:text name="header.shutdown" /></span></h3>

<p>
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-shutdown_640x491.png" 
     alt="CSOS Web Configuration Inderface: Shutdown" 
     width="640" height="491" border="1" />
</p>

<hr />

<h3><span id="FAQ"><s:text name="header.faq" /></span></h3>

<p>
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-faq_640x617.png" 
     alt="CSOS Web Configuration Inderface: FAQ" 
     width="640" height="617" border="1" />
</p>

<hr />

<h3><span id="Help"><s:text name="header.help" /></span></h3>

<p>
</p>

<p>
<img src="html/images/web_gui/csos-web-gui-help_640x376.png" 
     alt="CSOS Web Configuration Inderface: Help" 
     width="640" height="376" border="1" />
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