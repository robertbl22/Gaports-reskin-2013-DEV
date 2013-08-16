<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
		<div id="DDRMenu_TopStatic">
			<ul class="topLevel">
				<xsl:apply-templates select="node" />
			</ul>
		</div>
	</xsl:template>
	<xsl:template match="node">
		<li>
			<xsl:attribute name="class">
				<xsl:text>gradient</xsl:text>
				<xsl:text> item</xsl:text>
				<xsl:if test="@first = 1"> first</xsl:if>
				<xsl:if test="@last = 1"> last</xsl:if>
				<xsl:if test="@selected = 1"> selected</xsl:if>
				<xsl:if test="node"> haschild</xsl:if>
				<xsl:if test="@breadcrumb = 1"> breadcrumb</xsl:if>
			</xsl:attribute>
			<xsl:choose>
				<xsl:when test="@enabled = 1">
					<a href="{@url}" title="{@title}">
						<div>
							<xsl:choose>
								<xsl:when test="@title != ''">
									<xsl:value-of select="@title" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@text" />
								</xsl:otherwise>
							</xsl:choose>
						</div>
					</a>
				</xsl:when>
				<xsl:otherwise>
					<!--<a>-->
						<div>
							<xsl:choose>
								<xsl:when test="@title != ''">
									<xsl:value-of select="@title" />
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@text" />
								</xsl:otherwise>
							</xsl:choose>
						</div>
					<!--</a>-->
				</xsl:otherwise>
			</xsl:choose>
		</li>
	</xsl:template>
</xsl:stylesheet>