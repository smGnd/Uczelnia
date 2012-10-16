<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" />

<xsl:template match="/studenci">
	<html>
		<body>
			<ol>
				<xsl:for-each select="student">
					<li>
						<xsl:if test="@plec='k'">
							<font color="#FF0000">
								<xsl:value-of select="imie"/>
							</font>
						</xsl:if>
						<xsl:if test="@plec='m'">
							<font color="#0000FF">
								<xsl:value-of select="imie"/>
							</font>
						</xsl:if>
						<xsl:text> </xsl:text>
						<b>
							<xsl:value-of select="nazwisko"/>
						</b>
						<font> grupa: </font>
						<xsl:value-of select="grupa"/>
					</li>
				</xsl:for-each>
			</ol>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
