<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/meta">
	 	<xsl:variable name="name()"><xsl:value-of select="."></xsl:value-of></xsl:variable> 
	</xsl:template>
	<xsl:template match="/notes">
			<html>
				<head>
					<style>
					    div.notes > div.note {
							background-color: yellow;
							text-align: center;
							display-type: none;
						}
						div.notes > div.note:hover {
							display-type: block;
						}
					</style>
				</head>
				<body>
					<div class="notes">
						<xsl:for-each select="/notes/note">
							<div class="note"> id: <xsl:value-of select="@id"/> 
								<p>From:<xsl:value-of select = "from"/></p>
								<p>To:<xsl:value-of select="to"/></p>
								<p><xsl:value-of select="text"/></p>	
							</div>
						</xsl:for-each>
					</div>
				</body>
			</html>
    	</xsl:template>
</xsl:stylesheet>