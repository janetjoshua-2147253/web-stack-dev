<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<head>
<style>
h2,h3{
font-family:Brush Script MT;
text-align:center;
}
table{
margin-left:auto;
margin-right:auto;
color:white;
}
h5{
font-style:italic;


text-align:center;
}
</style>
</head>
<body background="https://img4.goodfon.com/wallpaper/nbig/d/36/derevo-coffee-kofe.jpg">
  <h2>Coffee House Company</h2>
  
  <table border="1">
    <tr bgcolor="#2e0000">
      <th style="text-align:left;color:white;">ITEM No.</th>
	  <th style="text-align:left;color:white;">CATEGORY</th>
	  <th style="text-align:left;color:white;">ITEM NAME</th>
	  <th style="text-align:left;color:white;">PRICE</th>
	  <th style="text-align:left;color:white;">ITEM DESCRIPTION</th>
      <th style="text-align:left;color:white;">RATING</th>
    </tr>
<tr>
<td colspan="6" padding="0" style="text-align:center;font-style:italic">(Special discount on the highlighted items)</td>
</tr>
    <xsl:for-each select="MENU/ITEM">

<xsl:sort select="price"
order="ascending"
data-type="number"/>


	
	<tr>
      <td><xsl:value-of select="item_no"/></td>
      <td><xsl:value-of select="category"/></td>
	  
	  <xsl:choose>
        <xsl:when test="price &lt; 90">
           <td bgcolor="#c7a170">
          <xsl:value-of select="item_name"/></td>
		  <td bgcolor="#c7a170">
          <xsl:value-of select="price"/></td>
		  <td bgcolor="#c7a170">
		    <xsl:value-of select="item_desc"/></td>
		  <td bgcolor="#c7a170">
<xsl:value-of select="rating"/></td>
        </xsl:when>
	  <xsl:otherwise>
	  <td>
	  <xsl:value-of select="item_name"/></td>
	  <td>
	  <xsl:value-of select="price"/></td>
	    <td><xsl:value-of select="item_desc"/></td>
	  <td><xsl:value-of select="rating"/></td>
	
	  </xsl:otherwise>
	 
	  
	  </xsl:choose>
	  
	  
    </tr>






    </xsl:for-each>
  </table>
<h3>BEST SELLERS!!</h3>
<table border="1">
 
<tr bgcolor="#2e0000">
      <th style="text-align:left;color:white;">ITEM No.</th>
	  <th style="text-align:left;color:white;">CATEGORY</th>
	  <th style="text-align:left;color:white;">ITEM NAME</th>
	  <th style="text-align:left;color:white;">PRICE</th>
	  <th style="text-align:left;color:white;">ITEM DESCRIPTION</th>
      <th style="text-align:left;color:white;">RATING</th>
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
