
<%@page import="com.dts.SBIBanking.dao.*,com.dts.SBIBanking.model.*"%>
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>

<%@ page language="java" pageEncoding="ISO-8859-1"%>

 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #D4F101}
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
        </tr><tr><td align=center width=1500><font color=white>
        <jsp:include page="Adminoptions.jsp"/>
        </font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr><td><%if(request.getParameter("status")!=null){ %>
	<font color="#550088"><b><%=request.getParameter("status") %></b></font><%} %></td></tr>
          <tr>
            <td height="314" align="center"><strong>View Bank Services
              </strong>
              <center><h3>&nbsp;</h3></center>
         
         
         
                   
	 
		<form action="DeleteBankServicesMaster.jsp">
<table align=center border=1>
<tr bgcolor="#D4F101"><th></th>
<th><strong>SERVICENAME  </strong></th>          
<th><strong>SERVICEACTIVESTATE</strong></th>
<th><strong>SERVICEDESC</strong></th>
</tr>            
<%BankServicesMasterDao dao=new BankServicesMasterDao();
CoreList cl=dao.ViewBankServicesMaster();
Enumeration en=cl.elements();
while(en.hasMoreElements())
{
BankServicesMasterForm form=(BankServicesMasterForm)en.nextElement();
%>
<tr bgcolor="#0C561B"><td><input name="TypeId" type=checkbox class="style1" value="<%=form.getServiceId() %>"></td>
<td><a href="UpdateBankServicesMaster.jsp?Id=<%=form.getServiceId()%>" class="style1"><%=form.getServiceName()%></a></td>
<td><span class="style1"><%=form.getServiceActivestate()%></span></td>
<td><span class="style1"><%=form.getServiceDesc()%></span></td></tr>
<%}%>
</table>
<center><input type=submit name=Delete value=Delete></center>
</form>
                    
                    
                    
                    
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

 
 
	
	 

