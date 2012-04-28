<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="ltr" lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#" py:extends="'master.kid'">
<head profile="http://dublincore.org/documents/dcq.html">
<title>Topicalizer - The tool for topic extraction, text analysis and abstract generation</title>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<meta name="DC.title" content="Topicalizer - The tool for topic extraction, text analysis and automatic abstract generation" />
<meta name="DC.subject" content="Text analysis" />
<meta name="DC.description" content="Topicalizer is a tool for topic extraction, text analysis, abstract generation and search engine optimization" />
<meta name="DC.audience" content="Webmasters, bloggers, linguists, authors" />
<meta name="DC.creator" content="Bj&ouml;rn Wilmsmann" />
<meta name="DC.publisher" content="Topicalizer" />
<meta name="DC.contributor" content="Bj&ouml;rn Wilmsmann" />
<meta name="DC.date" content="2006-01-27" />
<meta name="DC.type" content="Text" />
<meta name="DC.format" content="text/xhtml" />
<meta name="DC.identifier" content="http://www.topicalizer.com/" />
<meta name="DC.source" content="none" />
<meta name="DC.language" content="en" />
<meta name="DC.relation" content="Index" />
<meta name="DC.coverage" content="Text analysis, semantic web, search engine optimization, topic recognition, tagging, tag, topic, text summary" />
<meta name="DC.rights" content="All rights reserved" />
<meta name="audience" xml:lang="en" content="Webmasters, bloggers" />
<meta name="audience" content="Webmasters, bloggers" lang="en" />
<meta name="keywords" xml:lang="en" content="Text analysis, semantic web, search engine optimization, topic recognition, tagging, tag, topic, text summary" />
<meta name="robots" content="index,follow" />
<meta name="revisit-after" content="1 month" />
<link rel="shortcut icon" href="/static/images/favicon.ico" />
<link rel="icon" href="/static/images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="/static/css/standard.css" />
<script src="/static/javascript/fat.js" type="text/javascript"></script>
</head>
<body>
<form method="post" action="${tg.url('/processSemWeb')}">
  <table align="center">
    <tr>
      <td>
        <input type="text" class="greentext" name="term" size="30" onclick="JavaScript:if (this.value == 'Enter term') { this.value=''; }" onblur="JavaScript:if (this.value == '') { this.value='Enter term'; }" value="Enter term" />
      </td>
    </tr>
  </table><br />
  <input type="hidden" name="submit" value="analyse!" />
  <input type="submit" value="analyse!" />
</form>
<br /><br /><br />
<table py:if="error == 0" align="center">
  <tr>
    <td width="750">
      <h1>Web of terms for '<a href="${wikiPage.URL}" target="_blank">${term}</a>'</h1><br />
      <table width="100%">
	<tr>
	  <td class="maintext">
	    <table width="500">
	      <tr>
		<td>
		   <span py:for="term in linkedTerms"><a href="/processSemWeb/?term=${term['text']}">${term['text']}</a>,&nbsp;</span>
		</td>
	      </tr>
	    </table>
	  </td>
	</tr>
      </table>
    </td>
    <td>
      <br />
      <script type="text/javascript"><!--
      google_ad_client = "pub-4897855422499261";
      google_ad_width = 160;
      google_ad_height = 600;
      google_ad_format = "160x600_as";
      google_ad_type = "text_image";
      google_ad_channel ="";
      google_color_border = "A8DDA0";
      google_color_bg = "EBFFED";
      google_color_link = "0000CC";
      google_color_url = "008000";
      google_color_text = "6F6F6F";
      //--></script>
      <script type="text/javascript"
      src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
      </script>
    </td>
  </tr>
</table>
<p py:if="error == 1" align="center">
  <span py:content="errorMessage">X</span>
</p>
</body>
</html>
