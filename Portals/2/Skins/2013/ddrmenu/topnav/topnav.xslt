<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	<xsl:template match="/*">
		<xsl:apply-templates select="root/node[@enabled=1]" />
	</xsl:template>
	
	<!-- TEMPLATE: Home page -->
	<xsl:template match="node[@text='Home']">
		<!-- Mobile Home Link -->
		<li class="nav-home nav-home-xs visible-xs">
			<xsl:if test="@selected = 1">
				<xsl:attribute name="class">nav-home nav-home-xs visible-xs active</xsl:attribute>
			</xsl:if>
			<a href="/home.aspx"><i class="icon-home"></i>Home</a>
		</li>
		<!-- Desktop Home Link -->
		<li class="nav-home hidden-xs">
			<xsl:if test="@selected = 1">
				<xsl:attribute name="class">nav-home hidden-xs active</xsl:attribute>
			</xsl:if>
			<a href="/home.aspx"><i class="icon-home"></i></a>
		</li>
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