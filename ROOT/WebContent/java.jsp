<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
 "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title><s:text name="java.title" /></title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link href="html/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
  <link href="favicon.ico" rel="icon" type="image/x-icon" />
  <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>

<jsp:include page="Header.jsp"/>

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
      <h2><s:text name="java.header" /></h2>
    </td>
  </tr>
</table>

<hr />

<h3><s:text name="header.contents" /></h3>
<ul>
	<li><s:a href="#Introduction"><s:text name="header.introduction" /></s:a></li>
	<li><s:a href="#Instructions">Instructions to replace OpenJDK JVM with Oracle 
	 JVM on CSOS</s:a></li>
	<li><s:a href="#Author"><s:text name="header.author" /></s:a></li>
</ul>
<hr />

<h3><span id="Intoduction"><s:text name="header.introduction" /></span></h3>

<p>The reason I don't ship a <i>high performance</i> JVM with CSOS, 
is that I can't, not that I don't know better. 
That I personally as an individual, accept the Oracle Binary Code License and 
don't use the default OpenJDK Zoom JVM, yes, might seem a little two-faced, do 
as I say, rather than do as I do, but anyone can download and use it, by 
creating an Oracle account and accepting the BCL agreement.</p>

<p>Java is interpreted. Yes, it is all about the JIT. Java isn't alone there. 
(Triode, not directed at you, but it's relevant.) Jivelite runs acceptably 
under LuaJIT. If one was to try running that without a JIT, my expectation is 
that it would be orders of magnitude slower. The problem here, if there is one, 
not providing the best out-of-the-box experience, is that LuaJIT is open 
source, the Oracle JIT is <i>free</i>, as in free to use if you accept the binary 
license, but it is not open source, or freely re-distributable. If anyone wants 
to suggest I am guilty of anything, it's not that I want to hold back, that there 
is some dastardly plan to provide a pay-ware version of CSOS at some point in the 
future, and have reasons to differentiate that from a "free" version.</p>

<ol>
<li>If I wasn't already working on stuff that I consider to be of greater 
importance, I'd document how to switch out the OpenJDK. (It's no secret. For 
anyone who doesn't need hand-holding with the exact commands to type, extract 
the tar file and set JAVA_HOME in &quot;/etc/sysconfig/tomcat&quot;.)</li>

<li>If I am guilty of anything, it's that my initial testing of a tomcat based 
version of the Web-GUI was done on what I thought to be comparable hardware, 
an Atom processor. Roughly comparable in terms of hardware horse-power, but not 
comparable in terms of the optimisation provided by the system JVM.
</li>
</ol>
<hr />

<h3><span id="Instructions">Instructions to replace OpenJDK JVM with Oracle JVM on CSOS</span></h3>

<p>The CS web-gui is Java based. The default system Java is OpenJDK. On ARM 
platforms there is a performance boost to be gained by using the Oracle JVM. 
The software is <i>free</i> to use, but you will need to accept the Oracle 
(BCL) Binary Code License agreement.</p>

<p><i>Question</i>: Do I need to install the Oracle JVM?<br />
<i>Answer</i>: No, you don't. The OpenJDK JVM is the default. It works just fine. However, Java 
is an interpreted language. Tomcat, the web-app container, and the web-app are 
written in Java. The ultimate performance of any interpreted language can be 
improved by a pre-compiling some, or all, of the interpreted code into native 
platform code. Without going off at a tangent, into a history lesson and a bunch 
of detail, the Oracle JVM is faster than the OpenJDK JVM on some platforms. 
On ARM it is faster.</p>

<p><i>Question</i>: If the Oracle JVM is faster, why don't you include it on the 
CSOS image as the default Java?<br />
<i>Answer</i>: I can't. It is subject to the Oracle Binary Code License agreement. 
It's a choice for you to make. You want to use it, you need to accept the BCL, 
(as a private individual), you need to download the software, and I'll tell you 
how to install it and make it the default JVM for tomcat.</p>

<h5>Download the Oracle Embedded JRE</h5>

<p>Download ejre-7u45-fcs-b15-linux-arm-vfp-hflt-server_headless-26_sep_2013.tar.gz 
(32.2MB). You can't &quot;wget&quot; this file from the Wandboard. 
Do this from a browser on your desktop machine as you'll need to accept the 
license agreement and create a OTN account if you don't already have one. 
(Unlikely, unless you are a Java developer.) Once you have downloaded the file, 
you need to get it onto the Wandboard. copy it, (scp), to the fedora user home 
directory on the Wandboard.</p>

<h5>Install the Oracle JVM</h5>

<p>Log into the Wandboard as the "fedora" user....</p>

<pre>sudo mkdir -p /usr/local/share/java
sudo tar zxvf ejre-7u45-fcs-b15-linux-arm-vfp-hflt-server_headless-26_sep_2013.tar.gz -C /usr/local/share/java
sudo chown root.root -R /usr/local/share/java</pre>

<h5>Configure tomcat to use the Oracle JVM</h5>

<p>Now you'll need to edit, &quot;/etc/sysconfig/tomcat&quot;. At the end of the 
file, on a new line, add....</p>

<pre>JAVA_HOME=&quot;/usr/local/share/java/ejre1.7.0_45&quot;</pre>

<h5>Restart tomcat</h5>

<p>That's it. Now restart tomcat with the Oracle JVM....</p>

<pre>sudo systemctl restart tomcat</pre>

<h5>Disable tomcat web request logging</h5>

<p>The default tomcat configuration, logs every web request. When logging to a
sdcard, this can negatively affect the speed of the application. Request logging 
can be disabled.</p>

<p>Open &quot;/etc/tomcat/server.xml&quot; in an editor. Scroll to the end of the 
file. You want to comment out the Valve config that logs the incoming web requests. 
To comment in xml, &quot;&lt;!--&quot; starts the comment, &quot;--&gt;&quot; 
ends it. (Below it is shown as a patch.)</p>

<pre>--- server.xml~	2013-07-11 23:17:37.000000000 +0100
+++ server.xml	2014-01-05 23:40:39.003936730 +0000
@@ -132,9 +132,11 @@
         &lt;!-- Access log processes all example.
              Documentation at: /docs/config/valve.html
              Note: The pattern used is equivalent to using pattern="common" --&gt;
+        &lt;!--
         &lt;Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs"
                prefix="localhost_access_log." suffix=".txt"
                pattern="%h %l %u %t &quot;%r&quot; %s %b" /&gt;
+        --&gt;
 
       &lt;/Host&gt;
     &lt;/Engine&gt;</pre>

<h5>Restart tomcat</h5>

<p>That's it. Now restart tomcat so it picks up the logging configuration 
changes....</p>

<pre>sudo systemctl restart tomcat</pre>

<h5>Java Performance</h5>

<p><i>Question</i>: If the Oracle JVM is faster, how much faster?<br />
<i>Answer</i>: I can't give you a definitive answer. The only faster I'd be 
really interested in, is how much faster is it when running the web-app. 
I haven't benchmarked that. I'm not interested in benchmarking that.</p>

<hr />

<h3><span id="Author"><s:text name="header.author" /></span></h3>
<p>This information on this page was authored by
<s:a href="http://forums.slimdevices.com/member.php?3069-JackOfAll" 
     target="blank_">JackOfAll</s:a>.</p>
     
<hr />

<jsp:include page="Footer.jsp"/>

</body>
</html>
