<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foo="http://whatever">

  <!-- Compare two strings ignoring case, returning same
       values as compare(). -->
  <xsl:function name="foo:compareCI">
    <xsl:param name="string1"/>
    <xsl:param name="string2"/>
    <xsl:value-of select="compare(upper-case($string1),upper-case($string2))"/>
  </xsl:function>

  <xsl:template match="/">
compareCI red,blue: <xsl:value-of select="foo:compareCI('red','blue')"/>
compareCI red,red: <xsl:value-of select="foo:compareCI('red','red')"/>
compareCI red,Red: <xsl:value-of select="foo:compareCI('red','Red')"/>
compareCI red,Yellow: <xsl:value-of select="foo:compareCI('red','Yellow')"/>
  </xsl:template>

</xsl:stylesheet>