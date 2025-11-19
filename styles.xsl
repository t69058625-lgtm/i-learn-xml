<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
        	
			<html>
				<head>
					<style>
					    div.notes > div.note {
							background-color: yellow;
						}
					</style>
				</head>
				<body>
					<div class="notes">
						<xsl:for-each select="/messages/note">
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