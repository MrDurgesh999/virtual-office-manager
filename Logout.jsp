<%-- 
    Document   : Logout
    Created on : Aug 26, 2024, 1:15:46 PM
    Author     : hp india
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>
    </head>
    <%
        session.removeAttribute("user");
        response.sendRedirect("index.html");
        %>
</html>