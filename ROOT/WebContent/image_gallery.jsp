<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
 "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <title><s:text name="gallery.title" /></title>
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
      <h2><s:text name="gallery.header" /></h2>
    </td>
  </tr>
</table>

<hr />

<h5>Wandboard and DacMagic Plus <i>by lintweaker</i></h5>

<p>&quot;Here's my current setup for experimenting with my Wandboard Dual running the Fedora 18 ARM based Community 
Squeeze OS. The Wandboard for me is the ideal platform for building a capable audio player. It's meant to become a 
replacement for my Squeezebox Touches. The Cambridge Audio DacMagic Plus works straight out of the box up to 192k 
using USB (UAC2 mode). In the current test setup I mainly use it as a headphones amplifier. The DAC will upsample 
everything to 24bit/384k. If needed the DAC can be switched to USB1.1 mode (UAC1) which limits it to 96k.
</p>
<p>The little Wandboard is perfectly capable of running the Logitech Media Server, so need separate server needed!&quot;
</p>
<img src="html/images/photos/wb_dacmagicplus_lintweaker_640_427.jpg" 
     alt="Wandboard and DACMagic Plus contributed by lintweaker" width="640" height="427" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?47485-lintweaker" 
     target="blank_">lintweaker</s:a>.
</p>
<hr />

<h5>Wandboard, REGA DAC and Musical Fidelity V-Link 192 DAC <i>by dsdreamer</i></h5>
<p>&quot;Here is a 3-box wireless streaming solution consisting of a Wandboard running CSOS, connected to a 
Musical Fidelity V-Link 192 USB-to-SPDIF converter that drives a Rega DAC over a 75 Ohm coaxial connection.
The MF V-Link 192 is an asynchronous USB Audio Class 2 device, which I've found to work reliably at all 
common sample rates from 192kHz down to 44.1kHz and handily works around current limitations with the optical 
Toslink from the Wandboard. The Rega DAC is known for its unforced, organic sound quality which suits my musical 
tastes very well. As long as I prioritize sound over aesthetic appeal, this system could keep me satisfied for a 
long time!&quot;
</p>
<img src="html/images/photos/wb_rega_dac_dsdreamer_640x427.jpg" 
     alt="Wandboard and REGA DAC contributed by dsdreamer" width="640" height="427" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?12588-dsdreamer" 
     target="blank_">dsdreamer</s:a>.
</p>
<p>&quot;Here is a close-up view of the Wandboard and the Musical Fidelity V-Link 192 showing that I was playing back 
88.2kHz sample rate audio at the time.&quot;
</p>
<img src="html/images/photos/wb_unknown_dac_dsdreamer_640x427.jpg" 
     alt="Wandboard and Musical Fidelity V-Link 192 DAC contributed by dsdreamer" width="640" height="427" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?12588-dsdreamer" 
     target="blank_">dsdreamer</s:a>.
</p>
<hr />

<h5>Wandboard, DIY COAX SPDIF Output and VU Meters <i>by Pascal Hibon</i></h5>
<p>&quot;Although I have no immediate need for an additional Squeezebox, (I currently have 2x SB Touch, 
1x SB Radio, 1x SB Boom and 1x SB Classic), I found the Community Squeeze project a great initiative. 
That is the main reason for me purchasing a Wandboard and start testing it too.&quot;
</p>
<p>&quot;I'm mainly interested in the digital output on the Community Squeeze OS powered Wandboard 
to connect it to an external DAC. At present I have an Audiolab M-DAC and I will be using it with 
the Wandboard, connected by either coax SPDIF, Toslink SPDIF or the USB port.&quot;
</p>
<p>&quot;The Toslink output on the Wandboard is incorrectly wired and that was a great opportunity to 
create a small digital I/O board that holds both coax and optical SPDIF. (Shown in the picture 
below.)&quot; 
</p>
<s:a href="html/images/photos/wb_coax_pascal_hibon_800x534.jpg" target="blank_">
<img src="html/images/photos/wb_coax_pascal_hibon_432x282.jpg"
     title="Click for higher resolution image" 
     alt="Wandboard and DIY COAX SPDIF Output contributed by Pascal Hibon" width="432" height="282" />
</s:a>
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?7969-Pascal-Hibon" 
     target="blank_">Pascal Hibon</s:a>.
</p>
<p>&quot;Since I started using Squeezeboxes I've been a fan of the analog VU meter screensavers. 
To give my Community Squeeze Player the same vintage look I'll be fitting a pair of 
vintage VU meters. 
I'm planning on using the analog output of the Wandboard to drive the meters. I have successfully 
sync'ed the digital and analog outputs on the Wandboard, (with a little help from Clive), by 
using a custom ALSA configuration to combine the analog and spdif audio devices into a single output 
that is driven by Squeezelite. That works, but from time to time I experience some audio drop 
outs due to the fact that the Wandboard drivers currently use different clocks to drive the 
digital and analog outputs. A code change is required to correct this. (Below is a picture of 
the front panel of my prototype Community Squeeze Player.)&quot;
</p>
<img src="html/images/photos/vu_pascal_hibon_640x163.jpg"
     alt="VU Meter contributed by Pascal Hibon" width="640" height="163" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?7969-Pascal-Hibon" 
     target="blank_">Pascal Hibon</s:a>.
</p>
<hr />

<h5>Wandboard and Audio-GD DAC <i>by michaelvv</i></h5>
<img src="html/images/photos/wb_audio-gd_dac_michaelvv_640x426.jpg" 
     alt="Wandboard and Audio-GD DAC contributed by michaelvv" width="640" height="426" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?59321-michaelvv" 
     target="blank_">michaelvv</s:a>.
</p>
<hr />

<h5>Wandboard Audio/Visual Setup <i>by albertone74</i></h5>
<img src="html/images/photos/wb_audio_visual_albertone_640x478.jpg" 
     alt="Wandboard Audio/Visual Setup contributed by albertone74" width="640" height="478" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?23863-albertone74" 
     target="blank_">albertone74</s:a>.
</p>
<p>A close-up of the Wandboard.
</p>
<img src="html/images/photos/wb_albertone_640x478.jpg" 
     alt="Wandboard Audio/Visual Setup contributed by albertone74" width="640" height="478" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?23863-albertone74" 
     target="blank_">albertone74</s:a>.
</p>
<hr />

<h5>Cubieboard <i>by castalla</i></h5>
<p>&quot;Cubieboard Fedora 18 running LMS 7.8, Squeezelite 1.1 playing via  
bluetooth to Soundwave speaker.&quot;
</p>
<p>NB. Brian uses a specific, 
<s:a href="http://scotland.proximity.on.ca/contrib-images/hansg/Fedora-18-a10-armhfp-r1.img.xz" 
      target="blank_">Fedora 18 Allwinner A10 and A13 devices image</s:a>, 
to support the Cubieboard, in conjunction with the Community Squeeze ARM Software Repository.
Instructions for installing this image on the Cubieboard are given in the 
<s:a href="http://scotland.proximity.on.ca/contrib-images/hansg/README" target="blank_">README</s:a>. 
After installing the image, following the instructions for installing the Community Squeeze software 
repository on <s:a href="repo.jsp#Fedora_18_i686_and_x86_64">Fedora 18 i686 and x86_64</s:a>.
</p>
<img src="html/images/photos/cubie_castalla_640x480.jpg" 
     alt="Cubieboard contributed by castalla" width="640" height="480" />
<br class="separator" />
<p class="language">Contributed by
<s:a href="http://forums.slimdevices.com/member.php?15624-castalla" 
     target="blank_">castalla</s:a>.
</p>
<hr />

<jsp:include page="Footer.jsp"/>

</body>
</html>
