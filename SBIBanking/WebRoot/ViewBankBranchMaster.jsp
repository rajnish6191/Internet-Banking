
<%@page import="com.dts.core.util.CoreList"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.dts.SBIBanking.model.BankBranchMasterForm"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Internet Banking</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../includes/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FFFFFF; font-weight: bold; }
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
        </tr><tr><td align=center width=1500><font color=white><jsp:include page="Adminoptions.jsp"/></font></td></tr>
      </table> 
  
      <table bgcolor="white" width="780" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="314" align="center"><strong>View Branch Details </strong><br>
          
          
          
    <center><h3> <form action="DeleteBankBranchMaster.jsp">
<table align=center border=1>
<tr bgcolor="#D4F101">

<th colspan="2">Branch Address </th>         
<th>Branch Phone1</th>       
<th>Branch Phone2</th>       
<th>Branch Phone3</th>
<th>Branch  Email</th>          
<%--<th>Branch Incharge</th>--%>
</tr>          

<%
//BankBranchMasterDao dao=new BankBranchMasterDao();
CoreList cl=(CoreList)request.getAttribute("viewBranches");
Enumeration en=cl.elements();
while(en.hasMoreElements())
{
BankBranchMasterForm form=(BankBranchMasterForm)en.nextElement();
%>
 <tr bgcolor="#0C561B"><td><input name="TypeId" type=checkbox class="style1" value="<%=form.getBranchId() %>"></td>
 <td><a href="UpdateBankBranchMaster.jsp?Id=<%=form.getBranchId() %>" class="style2"><%=form.getBranchAddr()%></a></td>
 <td><span class="style2"><%=form.getBranchPhNo1()%></span></td>
 <td><span class="style2"><%=form.getBranchPhNo2()%></span></td>
 <td><span class="style2"><%=form.getBranchPhNo3()%></span></td>
 <td><span class="style2"><%=form.getBranchEmailId()%></span></td>
<%-- <td><%=form.getBranchInchrgId()%></td>--%>
 </tr>
 <%}%>
 </table>
 <center><input type=submit name=Delete value="Delete"></center>
 </form>
         </h3></center>
         
         
         
                    
                    
                    
                    
                    
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

