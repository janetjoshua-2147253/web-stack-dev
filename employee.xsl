<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<html> 
<body>
  
  <table border="1">
    <tr bgcolor="#9acd32">
      <th >ID</th>
	  <th >NAME</th>
      <th >AGE</th>
	  <th >SALARY</th>
      <th >EMAIL</th>
	  <th >MOBNUM</th>
	  <th >DESIGNATION</th>
    </tr>
    <xsl:for-each select="COMPANY/EMPLOYEE">
    <tr>
      <td><xsl:value-of select="Emp_id"/></td>
      <td><xsl:value-of select="Emp_name"/></td>
	  <td><xsl:value-of select="Emp_age"/></td>
      <td><xsl:value-of select="Emp_salary"/></td>
	  <td><xsl:value-of select="Emp_emailid"/></td>
	  <td><xsl:value-of select="Emp_Phonenum"/></td>
	  <td><xsl:value-of select="Emp_designation"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>

</xsl:stylesheet>
