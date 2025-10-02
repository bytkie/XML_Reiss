<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
			<body>
				<xsl:for-each select="reisid/reis">
					<h1>
						<xsl:value-of select="sihtkoht"/>
					</h1>
					<ul>
						<li>
							Flight: <xsl:value-of select="transport/lennureis"/>
						</li>
						<li>
							Train: <xsl:value-of select="transport/rong"/>
						</li>
						<li>
							Airport: <xsl:value-of select="transport/lennujaam"/>
						</li>
						<li>
							Hotel:
							<span style="background-color:yellow">
								<xsl:value-of select="majutus/hotell"/>
								(Stars: <xsl:value-of select="majutus/hotell/@stars"/>)
							</span>
						</li>
						<li>
							Excursion: <xsl:value-of select="ekskursioon"/>
						</li>
						<li>
							Special: <xsl:value-of select="erilineSoovitus"/>
						</li>
						<li>
							Total Price:
							<xsl:value-of select="hinnad/transport + hinnad/majutus + hinnad/ekskursioon"/>
						</li>
						<li>
							<xsl:if test="hinnang &gt; 4.7">
								<b style="color:red">
									Excellent rating: <xsl:value-of select="hinnang"/>
								</b>
							</xsl:if>
							<xsl:if test="hinnang &lt;= 4.7">
								Rating: <xsl:value-of select="hinnang"/>
							</xsl:if>
						</li>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
