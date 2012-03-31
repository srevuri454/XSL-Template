<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="index.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/root" >

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>International Students</title>
<link rel="stylesheet" href="listyles.css"/>
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
		<script type="text/javascript">
			$(function(){

				// Accordion
				$("#accordion").accordion({ header: "h3" });
				
				//hover states on the static widgets
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
				
			});
		</script>
		<style type="text/css">
			/*demo page css*/
			.demoHeaders { margin-top: 2em; }
			#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
			#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
			ul#icons {margin: 0; padding: 0;}
			ul#icons li {margin: 2px; position: relative; padding: 4px 0; cursor: pointer; float: left;  list-style: none;}
			ul#icons span.ui-icon {float: left; margin: 0 4px;}
		</style>	
</head>

<body>
<div id='container'>

    <div id='universityName'>
    	Central University - <span id='slogan'>International Student Services</span>
    <!--End of universityName div --></div>
   
    <div id='bannerNav'>
    <a href='index.xml'><span class='nav' style="background-color:{bgcolor}">Prospective Students</span></a><a href='current.xml'><span class='nav' style="background-color:{cbgcolor}">Current Students</span></a><a href='admissions.xml'><span class='nav' style="background-color:{abgcolor}">Admissions</span></a><a href='services.xml'><span class='nav' style="background-color:{sbgcolor}">Services</span></a><a href='language.xml'><span class='nav' style="background-color:{lbgcolor}">Language Institute</span></a>
    <!--End of bannerNav div--></div>
    
    <div id='banner'>
    			<img src="{image}" />
    <!--End of banner div--></div>
    
    <div id='subbanner' style="background-color:{color};">
    	
   		<strong><xsl:value-of select="@value" /> <xsl:value-of select="pagelinks/pl/text" /></strong>
      
  </div>  <!-- End of subbanner div-->
    
    <div id='contentNav' >
    	 <xsl:for-each select="pagelinks/pl">
    		<!--<a href="{linkto}" ><xsl:value-of select="text" /></a> -->
            <a href="#" ><xsl:value-of select="text" /></a> 
            <xsl:if test="position()!=last()"> |  </xsl:if>
            
   		 </xsl:for-each>
    <!--End of contentNav div--></div>
    <div id='content'>
    	<xsl:copy-of select="bodytext" />
    	
    </div><!--End of content div-->
  
</div><!--End of container div-->
  <div id='footer'>
    	Copyright 2012. Central University, San Anotnio, TX 78238.
  </div><!--End of footer div-->  
</body>
</html>

</xsl:template>
</xsl:stylesheet>