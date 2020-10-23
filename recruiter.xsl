<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
  <style>
    table, td, th {
      border: 3px solid black;
      text-align: center;
  }
  
  table {
      border-collapse: collapse;
      width: 100%;
      
  }
  
  th {
      background-color: #4CAF50;
      color: white;
  }
  
  th, td {
      padding: 15px;
  }
  tr:hover {background-color: black}
  
  body{
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: 100% 100%;
      padding-left: 10%;
      font-size: 15px;
      padding-top: 3%;
  }
  
  .no_2{
    color: red;
  }
  
  .no_1{
    color: blue;
  }
  
  
.h2{
    color: white;
}
    
  </style>
  </head>
    <body> 
      <h2 align="center" color="red">Recruiter List</h2>
      <table>
    
          <tr > 
            <th>Company Name</th>
            <th>About Us</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>CGPA</th>
            <th>Criteria</th>
            <th>Rounds</th>
            <th>Contact Us</th>
            <th>Role</th>
            <th>Type</th>
            <th>CTC</th>
            <th>Branches</th>
            <th>Link</th>
            <th>Question</th>
            
          </tr>
           <xsl:for-each select="/RecruiterList/Recruiter">
            <tr bgcolor="red">
                                    <td>
                                        <xsl:value-of select="cname" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="aboutus" />
                                    </td>

                                    <td>
                                        <xsl:value-of select="startdate" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="enddate" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="eligibility/cgpa" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="eligibility/criteria" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="rounds" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="contactus" />
                                    </td>
                                     <td>
                                        <xsl:value-of select="Role/role" />
                                    </td>
                                     <td>
                                        <xsl:value-of select="Role/type" />
                                    </td>
                                     <td>
                                        <xsl:value-of select="Role/ctc" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Role/branches" />
                                    </td>
                                     <td>
                                        <xsl:value-of select="link" />
                                    </td>
                                     <td>
                                        <xsl:value-of select="question" />
                                    </td>
                                    
                                </tr>
                        
                           
                        
                    </xsl:for-each>
                 
          
                  

      </thead>
      </table>
      <br/>
    </body>
  </html>
  
</xsl:template>
</xsl:stylesheet>