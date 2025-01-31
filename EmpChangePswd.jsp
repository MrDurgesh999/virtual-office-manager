<%--
Document : AChangePassword
Created on : Jul 21, 2024, 12:21:49 PM
Author : Asus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="EmployeeHeader.jsp" %>
<div >
<center>
<form action="ChangePassword" method="post">
<table width="500" cellpadding="20" cellspacing="0" border="1" style="background-color:gold;">
<tr><td>Old Password</td><td><input type="password" name="opswd"></td></tr>
<tr><td>New Password</td><td><input type="password" name="npswd"></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="cpswd"></td></tr>
<tr><td><input type="submit" value="Submit"></td>
<td><input type="reset" value="Reset"></td></tr>
</table>
</form>
<%  
if(request.getParameter("error")!=null)
{
String msg=request.getParameter("error");

out.println("<h1 style='color:green;'>"+msg+"</h1>");

}
%>
</center>
</div>
</body>
</html>