
<%@page import="com.dts.SBIBanking.dao.ChequeIssueDAO"%>
<%@page import="com.dts.SBIBanking.model.ChequeIssueMaster"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style5 {color: #D4F101; font-style: italic; font-weight: bold; }
-->
</style>
</head>

<body bgcolor="004B10" leftmargin="0" topmargin="0" onLoad="goforit()">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="middle"><table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>

          <td height="71" valign="bottom" background="./images/satya.JPG"><table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td><div align="right"> 
               
<span id="clock"></span>
                  </div></td>
              </tr>
            </table></td>
        </tr>
      </table>

      <table width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/ib_banner2.jpg" width="780" height="101"></td>
        </tr><tr><td align=center width=1500><font color=white><jsp:include page="customeroptions.jsp"/></font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="314" align="center"><br>
          
          
          
    <center><h3></h3></center>
         <%int requestid=Integer.parseInt(request.getParameter("requestid"));
         ChequeIssueMaster amaster=new ChequeIssueDAO().viewChequeIssues(requestid);
         
          %>
          
          <table><tr bgcolor="#D4F101"><td><div align="center"><em><strong>Number Of cheque</strong></em></div></td>
          <td><div align="center"><em><strong>From Number</strong></em></div></td>
          <td><div align="center"><em><strong>To Number </strong></em></div></td>
          </tr>
          <tr bgcolor="#0C561B"><td><span class="style5"><%=amaster.getNoofcheques() %></span></td><td><span class="style5"><%=amaster.getFromnumber() %></span></td>
          <td><span class="style5"><%=amaster.getToNumber() %></span></td></tr>
          </table>
         
         
                    
                    
                    
                    
                    
		   <table width="85%" border="0" align="center" cellpadding="2" cellspacing="0">

                    <tr> 
                      <td height="18" valign="top"><img src="../images/trans.gif" width="5" height="5"></td>
                    </tr>
                    <tr> 
                      <td height="18" valign="top">&nbsp;</td>
                    </tr>
                   
      </table></td>
  </tr>
</table>
</body>
</html>
