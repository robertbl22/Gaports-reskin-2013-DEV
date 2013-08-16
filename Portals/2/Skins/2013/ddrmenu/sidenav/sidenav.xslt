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
	<xsl:template name="LinkTitle">
		<xsl:param name="title" />
		<xsl:param name="text" />
		<xsl:choose>
			<xsl:when test="$title != ''">
				<xsl:value-of select="$title" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<!-- TEMPLATE: Current root page -->
	<xsl:template match="node">
		<xsl:if test="@breadcrumb = 1">
			<ul class="nav sidenav">
				
				<!-- Normal root page -->
				<li>
					<xsl:attribute name="class">
						<xsl:text>root</xsl:text>
						<xsl:if test="@selected = 1"> active</xsl:if>
						<xsl:if test="@enabled != 1"> disabled</xsl:if>
						<xsl:if test="@breadcrumb = 1"> breadcrumbitem</xsl:if>
						<xsl:if test="node"> haschildren</xsl:if>
					</xsl:attribute>
					<a href="{@url}" title="{@title}">
						<xsl:call-template name="LinkTitle">
							<xsl:with-param name="title" select="@title" />
							<xsl:with-param name="text" select="@text" />
						</xsl:call-template>
					</a>
				</li>
					
				<!-- Add child pages -->
				<xsl:if test="node">
					<xsl:apply-templates select="node" />
				</xsl:if>
				
				
			</ul>
		</xsl:if>
	</xsl:template>
	
	<!-- TEMPLATE: Child pages -->
	<xsl:template match="node/node">
		<li>
			<xsl:attribute name="class">
				<xsl:if test="@selected = 1"> active</xsl:if>
				<xsl:if test="@enabled != 1"> disabled</xsl:if>
				<xsl:if test="@breadcrumb = 1"> breadcrumbitem</xsl:if>
				<xsl:if test="node"> haschildren</xsl:if>
			</xsl:attribute>
			
			
			<!-- Child page -->
			<a href="{@url}" title="{@title}">
				<xsl:call-template name="LinkTitle">
					<xsl:with-param name="title" select="@title" />
					<xsl:with-param name="text" select="@text" />
				</xsl:call-template>
			</a>
			
			<!-- Active child page children root -->
			<xsl:if test="node">
				<xsl:if test="@breadcrumb = 1">
					<ul class="nav">
						<xsl:apply-templates select="node" />
					</ul>
				</xsl:if>
			</xsl:if>
			
			
		</li>
	</xsl:template>
</xsl:stylesheet>