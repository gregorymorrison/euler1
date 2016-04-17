<?xml version="1.0" encoding="utf-8" ?>
<!-- Euler1 in XSLT -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template name="euler1">
    <!-- give parameters default values with select keyword -->
    <xsl:param name="startAt" select="1"/>  <!-- default param value -->
    <xsl:param name="endAt" />
    <xsl:param name="result" select="0"/>

    <xsl:choose>
      <xsl:when test="$startAt &lt; $endAt">

        <!-- call euler1 recursively -->
        <xsl:choose>
          <xsl:when test="$startAt mod 3 = 0 or $startAt mod 5 = 0">
            <xsl:call-template name="euler1">
              <xsl:with-param name="startAt" select="$startAt + 1"/>
              <xsl:with-param name="endAt" select="$endAt"/>
              <!-- either pass in result + startAt -->
              <xsl:with-param name="result" select="$result + $startAt"/>
            </xsl:call-template>
          </xsl:when>

          <xsl:otherwise>
            <xsl:call-template name="euler1">
              <xsl:with-param name="startAt" select="$startAt + 1"/>
              <xsl:with-param name="endAt" select="$endAt"/>
              <!-- or pass in result -->
              <xsl:with-param name="result" select="$result"/>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:when>

      <xsl:otherwise>
        <!-- create return value -->
        <xsl:value-of select="$result"/>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <!-- Main procedure -->
  <xsl:template match="/">

   <!-- define variable to capture return value -->
   <xsl:variable name="result">
      <xsl:call-template name="euler1">
        <xsl:with-param name="endAt">1000</xsl:with-param>
      </xsl:call-template>
    </xsl:variable>

    <!-- print solution -->
    <xsl:value-of select="$result"/>
  </xsl:template>

</xsl:stylesheet>
