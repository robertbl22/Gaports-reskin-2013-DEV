<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	
	<xsl:template match="/*">
		<xsl:apply-templates select="root/node[@enabled=1]" />
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">
				Cargo <b class="caret"></b>
			</a>
			<ul class="dropdown-menu">
				<li><a href="/PortofSavannah/GardenCityTerminal/Container.aspx">Container</a></li>
				<li><a href="/PortofSavannah/GardenCityTerminal/Reefer.aspx">Reefer</a></li>
				<li><a href="/PortofBrunswick/ColonelsIslandTerminalRoRo/RoRo.aspx">Ro/Ro</a></li>
				<li><a href="/PortofSavannah/OceanTerminal/BreakBulk.aspx">Breakbulk</a></li>
				<li><a href="/PortofSavannah/OceanTerminal/HeavyLift.aspx">Heavy Lift</a></li>
			</ul>
		</li>
	</xsl:template>
	
	<!-- TEMPLATE: Root pages -->
	<xsl:template match="node">
		<xsl:if test="@text='Home' or @text='About' or @text='Port of Savannah' or @text='Port of Brunswick' or @text='Media'">
			<li>
				<xsl:if test="@selected = 1 or @breadcrumb = 1">
					<xsl:attribute name="class">active</xsl:attribute>
				</xsl:if>
				<a href="{@url}">
					<xsl:choose>
						<xsl:when test="@text = 'Port of Savannah'">
							<xsl:text>Savannah</xsl:text>
						</xsl:when>
						<xsl:when test="@text = 'Port of Brunswick'">
							<xsl:text>Brunswick</xsl:text>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@text" />
						</xsl:otherwise>
					</xsl:choose>
				</a>
			</li>
		</xsl:if>
	</xsl:template>
	
</xsl:stylesheet>