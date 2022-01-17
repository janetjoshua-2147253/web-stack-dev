<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<body>
  <h2>Coffee House Company</h2>
  <table border="1">
    
      <th style="text-align:left">ITEM No.</th>
	  <th style="text-align:left">CATEGORY</th>
	  <th style="text-align:left">ITEM NAME</th>
	  <th style="text-align:left">PRICE</th>
	  <th style="text-align:left">ITEM DESCRIPTION</th>
      <th style="text-align:left">RATING</th>
    </tr>

    <xsl:for-each select="MENU/ITEM">

<xsl:sort select="price"
order="ascending"
data-type="number"/>


	
	<tr>
      <td><xsl:value-of select="item_no"/></td>
      <td><xsl:value-of select="category"/></td>
	  <td><xsl:value-of select="item_name"/></td>
	  <td><xsl:value-of select="price"/></td>
	  <td><xsl:value-of select="item_desc"/></td>
	  <td><xsl:value-of select="rating"/></td>
	  
    </tr>






    </xsl:for-each>
  </table>
<h3>BEST SELLERS!!</h3>
<table border="1">
 
<tr bgcolor="#9acd32">
      <th style="text-align:left">ITEM No.</th>
	  <th style="text-align:left">CATEGORY</th>
	  <th style="text-align:left">ITEM NAME</th>
	  <th style="text-align:left">PRICE</th>
	  <th style="text-align:left">ITEM DESCRIPTION</th>
      <th style="text-align:left">RATING</th>
    </tr>
<xsl:for-each select="MENU/ITEM">
<xsl:sort select="rating"
order="descending"
data-type="number"/>
      <xsl:if test="rating &gt; 4.7">

   



   <tr>
      <td><xsl:value-of select="item_no"/></td>
      <td><xsl:value-of select="category"/></td>
	  <td><xsl:value-of select="item_name"/></td>
	  <td><xsl:value-of select="price"/></td>
	  <td><xsl:value-of select="item_desc"/></td>
	  <td><xsl:value-of select="rating"/></td>
	  
    </tr>

      </xsl:if>

    
    </xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
