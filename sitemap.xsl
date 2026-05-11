<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html><head>
<title>Sitemap — <xsl:value-of select="sitemap:urlset/sitemap:url[1]/sitemap:loc"/></title>
<style>
body{font-family:system-ui,sans-serif;margin:40px;background:#0a0a0a;color:#e5e5e5}
h1{font-size:1.5rem;margin-bottom:1rem;color:#fff}
table{border-collapse:collapse;width:100%}
th{text-align:left;padding:8px 12px;background:#1a1a2e;color:#888;font-size:.85rem;border-bottom:1px solid #222}
td{padding:8px 12px;border-bottom:1px solid #161616;font-size:.9rem}
a{color:#60a5fa;text-decoration:none}a:hover{text-decoration:underline}
.pri{color:#4ade80}.freq{color:#a78bfa}
</style>
</head><body>
<h1>XML Sitemap</h1>
<table>
<tr><th>URL</th><th>Last Modified</th><th>Frequency</th><th>Priority</th></tr>
<xsl:for-each select="sitemap:urlset/sitemap:url">
<tr>
<td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
<td><xsl:value-of select="sitemap:lastmod"/></td>
<td class="freq"><xsl:value-of select="sitemap:changefreq"/></td>
<td class="pri"><xsl:value-of select="sitemap:priority"/></td>
</tr>
</xsl:for-each>
</table>
</body></html>
</xsl:template>
</xsl:stylesheet>