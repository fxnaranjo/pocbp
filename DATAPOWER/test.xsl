<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:dp="http://www.datapower.com/extensions" 
	extension-element-prefixes="dp" 
	exclude-result-prefixes="dp">
 <xsl:template match="/">
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
   <soapenv:Header/>
   <soapenv:Body>
  <mensaje>Hello World!!</mensaje>
</soapenv:Body>
</soapenv:Envelope>
 </xsl:template>
</xsl:stylesheet>
