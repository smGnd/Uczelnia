<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="utf-8" />
<xsl:for-each match="studenci">
	<ol>
		<xsl:value-of select="student" />
	</ol>
</xsl:for-each>
<xsl:template match="student/nazwisko">
	<b>
		<xsl:value-of select="nazwisko" />
	</b>
</xsl:template>
<xsl:template match="student[@plec='k']/imie">
	<span style="color:red">
		<xsl:value-of select="imie" />
	</span>
</xsl:template>
<xsl:template match="student[@plec='m']/imie">
	<span style="color:blue">
		<xsl:value-of select="imie" />
	</span>
</xsl:template>
<xsl:template match="student/grupa">
	grupa:
	<xsl:value-of select="grupa" />
</xsl:template>
</xsl:stylesheet>
