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

<h5>Wandboard and DacMagic Plus</h5>
<p>
<img src="html/images/photos/wb_dacmagicplus_lintweaker_640_427.png" 
     alt="Wandboard and DACMagic Plus contributed by lintweaker" width="640" height="427" />
<br class="separator" />
Contributed by
<s:a href="http://forums.slimdevices.com/member.php?47485-lintweaker" 
     target="blank_">Lintweaker</s:a>.
</p>
<hr />

<h5>Wandboard and REGA DAC</h5>
<p>
<img src="html/images/photos/wb_rega_dac_dsdreamer_640x427.png" 
     alt="Wandboard and REGA DAC contributed by dsdreamer" width="640" height="427" />
<br class="separator" />
Contributed by
<s:a href="http://forums.slimdevices.com/member.php?12588-dsdreamer" 
     target="blank_">dsdreamer</s:a>.
</p>
<hr />

<h5>Wandboard and Unknown DAC</h5>
<p>
<img src="html/images/photos/wb_unknown_dac_dsdreamer_640x427.png" 
     alt="Wandboard and UNKNOWN DAC contributed by dsdreamer" width="640" height="427" />
<br class="separator" />
Contributed by
<s:a href="http://forums.slimdevices.com/member.php?12588-dsdreamer" 
     target="blank_">dsdreamer</s:a>.
</p>
<hr />

<h5>Wandboard and DIY COAX SPDIF Output</h5>
<p>&quot;I finished the prototype of the small IO board. That board contains a COAX and TOSLINK SPDIF output.&quot;
</p>
<p>
<img src="html/images/photos/wb_coax_pascal_hibon_432x282.png" 
     alt="Wandboard and DIY COAX SPDIF Output contributed by Pascal Hibon" width="432" height="282" />
<br class="separator" />
Contributed by
<s:a href="http://forums.slimdevices.com/member.php?7969-Pascal-Hibon" 
     target="blank_">Pascal Hibon</s:a>.
</p>
<hr />

<h5>Wandboard and Audio-GD DAC</h5>
<p>
<img src="html/images/photos/wb_audio-gd_dac_michaelvv_640x426.png" 
     alt="Wandboard and Audio-GD DAC contributed by michaelvv" width="640" height="426" />
<br class="separator" />
Contributed by
<s:a href="http://forums.slimdevices.com/member.php?59321-michaelvv" 
     target="blank_">michaelvv</s:a>.
</p>
<hr />

<jsp:include page="Footer.jsp"/>

</body>
</html>
