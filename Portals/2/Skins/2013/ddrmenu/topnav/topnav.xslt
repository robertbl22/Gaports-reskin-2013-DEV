<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	
	<!-- TEMPLATE: Menu container -->
	<xsl:template match="root">
		<xsl:apply-templates select="node" />
	</xsl:template>
	
	<!-- TEMPLATE: Format link title -->
	<xsl:template match="node">
		<li>
			<xsl:if test="@enabled = 1">
				<xsl:if test="@selected = 1">
					<xsl:attribute name="class">active</xsl:attribute>
				</xsl:if>
			</xsl:if>
			
			<xsl:choose>
				<xsl:when test="@enabled = 1 and @selected != 1">
					<a href="{@url}">
						<xsl:value-of select="@text" />
					</a>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="@text" />
				</xsl:otherwise>
			</xsl:choose>
			
		</li>
	</xsl:template>
	
	
</xsl:stylesheet>