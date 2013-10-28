<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	<xsl:template match="/*">
		<xsl:apply-templates select="root/node[@enabled=1]" />
	</xsl:template>
	
	<!-- TEMPLATE: Root pages -->
	<xsl:template match="node">
		<li>
			<xsl:if test="@selected = 1 or @breadcrumb = 1">
				<xsl:attribute name="class">active</xsl:attribute>
			</xsl:if>
			<a href="{@url}"><xsl:value-of select="@text" /></a>
		</li>
	</xsl:template>
	
</xsl:stylesheet>