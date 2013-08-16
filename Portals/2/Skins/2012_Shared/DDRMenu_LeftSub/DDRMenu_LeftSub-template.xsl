<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/*">
        <xsl:apply-templates select="root" />
    </xsl:template>

    <!-- Menu container -->
    <xsl:template match="root">
        <div id="DDRMenu_LeftSub">
            <xsl:apply-templates select="node" />
        </div>
    </xsl:template>

    <!-- Format link title -->
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

    <!-- Current root page -->
    <xsl:template match="node">
        <xsl:if test="@breadcrumb = 1">
            <xsl:choose>
                <xsl:when test="@enabled = 1">
                    <a href="{@url}" title="{@title}">
                        <div class="root">
                            <div>
                                <xsl:attribute name="class">
                                    <xsl:if test="node"> haschildren</xsl:if>
                                </xsl:attribute>
                                <xsl:call-template name="LinkTitle">
                                    <xsl:with-param name="title" select="@title" />
                                    <xsl:with-param name="text" select="@text" />
                                </xsl:call-template>
                            </div>
                        </div>
                    </a>
                </xsl:when>
                <xsl:otherwise>
                    <div class="root">
                        <div>
                            <xsl:attribute name="class">
                                <xsl:if test="node"> haschildren</xsl:if>
                            </xsl:attribute>
                            <xsl:call-template name="LinkTitle">
                                <xsl:with-param name="title" select="@title" />
                                <xsl:with-param name="text" select="@text" />
                            </xsl:call-template>
                        </div>
                    </div>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="node">
                <ul>
                    <xsl:apply-templates select="node" />
                </ul>
            </xsl:if>
        </xsl:if>
    </xsl:template>

    <!-- Child pages -->
    <xsl:template match="node/node">
        <li>
            <xsl:choose>
                <xsl:when test="@enabled = 1">
                    <a href="{@url}" title="{@title}">
                        <div class="item">
                            <xsl:attribute name="class">
                                <xsl:if test="@selected = 1"> selected</xsl:if>
                                <xsl:if test="node"> haschildren</xsl:if>
                                <xsl:if test="@breadcrumb = 1"> breadcrumb</xsl:if>
                            </xsl:attribute>
                            <xsl:call-template name="LinkTitle">
                                <xsl:with-param name="title" select="@title" />
                                <xsl:with-param name="text" select="@text" />
                            </xsl:call-template>
                        </div>
                    </a>
                </xsl:when>
                <xsl:otherwise>
                    <div class="item">
                        <xsl:attribute name="class">
                            <xsl:if test="@selected = 1"> selected</xsl:if>
                            <xsl:if test="node"> haschildren</xsl:if>
                            <xsl:if test="@breadcrumb = 1"> breadcrumb</xsl:if>
                        </xsl:attribute>
                        <xsl:call-template name="LinkTitle">
                            <xsl:with-param name="title" select="@title" />
                            <xsl:with-param name="text" select="@text" />
                        </xsl:call-template>
                    </div>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:if test="node">
                <xsl:if test="@breadcrumb = 1">
                    <ul>
                        <xsl:apply-templates select="node" />
                    </ul>
                </xsl:if>
            </xsl:if>
        </li>
    </xsl:template>

</xsl:stylesheet>