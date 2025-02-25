<%-- 
    Document   : EmployeeList
    Created on : Aug 26, 2024, 1:10:50 PM
    Author     : hp india
--%>
<%@page import="java.sql.*"%>
<%@page import="DB.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <center>
                <h2>Employee List</h2>
                <table width="1200" cellpadding="10" cellspacing="0" border="1" bgcolor="lightblue">
                    <tr style="background-color:dodgerblue;color:white"><th>Emp.Code</th>
                        <th>Emp.Name</th><th>Date Of Birth</th><th>Gender</th><th>Post</th><th>Address</th><th>City</th>
                       <th>Contact No.</th> <th>E Mail Address</th><th>Id Name</th><th>Id Number</th><th>Account Status</th>
                        <th>Action</th></tr>
                    <%
                    DBCon db=new DBCon();
                    db.pstmt=db.con.prepareStatement("select*from emp_mstr");
                    db.rst=db.pstmt.executeQuery();
                    while(db.rst.next())
                    {
                        out.println("<tr><td>"+db.rst.getString(1)
                        +"</td><td>"+db.rst.getString(2)+"</td>"
                         +"<td>"+db.rst.getString(3)+"</td><td>"+db.rst.getString(4)+"</td>"
                                +"<td>"+db.rst.getString(5)+"</td><td>"+db.rst.getString(6)+"</td>"
                                +"<td>"+db.rst.getString(7)+"</td><td>"+db.rst.getString(8)+"</td>"
                                +"<td>"+db.rst.getString(9)+"</td><td>"+db.rst.getString(10)+"</td>"
                                +"<td>"+db.rst.getString(11)+"</td>");
                       String email=db.rst.getString(9);
                       PreparedStatement ps=db.con.prepareStatement("select ac_status from login where user=?");
                       ps.setString(1, email);
                       ResultSet rs=ps.executeQuery();
                       if(rs.next()){
                       int st=rs.getInt(1);
                       if(st==1){
                       out.println("<td style='color:green;'>Active</td><td><a href=BlockUnblock?email="+email+"&status=1><input type=button style='color:white;background-color:red;width:120px;height:30px;'value='Block Account'></a></td>");
                       }
                       else{
                           out.println("<td style='color:red;'>Block</td><td><a href=BlockUnblock?email="+email+"&status=0><input type=button style='color:white;background-color:green;width:120px;height:30px;'value='UnBlock Account'></a></td>");
                       }
                       }
                        }
               %>
                </table>
            </center>
        </div>
    </body>
</html>