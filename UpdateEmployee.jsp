<%-- 
    Document   : UpdateEmployee
    Created on : Aug 25, 2024, 4:58:30 PM
    Author     : Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="AdminHeader.jsp"%>
<div>
    <h1>Search Employee</h1>
    <center>
        <form action="EmployeeDetail.jsp">
            <br>
            <table width="500" cellpadding="20" border="1"cellspacing="0" bgcolor="lightgreen">
                <tr><td>Employee Code Or Contact or E Mail</td><td><input type="search"name="data"></td></tr>
                <tr><th><input type="submit"value="submit"></th><th><input type="reset"value="Reset"></th>
                    
                </tr>               
            </table>
        </form>
    </center>
    </body>
    </body>
</html>