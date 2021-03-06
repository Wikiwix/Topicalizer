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
<table py:if="error == 0" align="center">
  <tr>
    <td width="750">
      <h1>Semantic Web</h1><br />
      <h2>URLs</h2><br />
      <table>
	<tr py:for="url in urlList">
	  <td py:content="url">X</td>
	</tr>
      </table><br />
      <h2>Relations</h2><br />
      <table width="100%">
	<tr>
	  <td class="maintext">
	    <table>
	      <tr py:for="keyword, keywordFrequency in keywordsComplete">
		<td py:content="XML(keyword)">X</td>
		<td>
		  <table>
		    <tr py:for="keyKeyword, keyKeywordFrequency in keyKeywords[keyword]">
		      <td>
			<span py:if="(keywordBelongsTo[keyword] == '1' and (keywordBelongsTo[keyKeyword] == '2' or keywordBelongsTo[keyKeyword] == '3')) or (keywordBelongsTo[keyword] == '2' and (keywordBelongsTo[keyKeyword] == '3'))">&rArr;</span>
			<span py:if="(keywordBelongsTo[keyKeyword] == '1' and (keywordBelongsTo[keyword] == '2' or keywordBelongsTo[keyword] == '3')) or (keywordBelongsTo[keyKeyword] == '2' and (keywordBelongsTo[keyword] == '3'))">&lArr;</span>
			<span py:if="(keywordBelongsTo[keyKeyword] == '1' and keywordBelongsTo[keyword] == '1') or (keywordBelongsTo[keyword] == '2' and keywordBelongsTo[keyword] == '2') or (keywordBelongsTo[keyword] == '3' and keywordBelongsTo[keyword] == '3')">==</span>
		      </td>
		      <td py:content="XML(keyKeyword)">X</td>
		      <td py:content="keyKeywordFrequency">X</td>
		    </tr>
		  </table>
		</td>
	      </tr>
	    </table>
	  </td>
	  <td class="maintext">
	  </td>
	</tr>
      </table>
    </td>
  </tr>
</table>
<p py:if="error == 1" align="center">
  <span py:content="errorMessage">X</span>:<br />
  <a href="${url}" target="_blank">${url}</a>
</p>
</body>
</html>
