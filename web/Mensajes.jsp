<%-- 
    Document   : Mensajes
    Created on : 06-may-2018, 12:01:18
    Author     : nauzetaduen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensajes</title>
    </head>
    <body>
        <h1>Mensajes</h1>
        <table>
            <tr><th>ID</th><th>DNI</th><th>Mensaje</th></tr>
            <%
            ResultSet rs = (ResultSet) request.getAttribute("mensajes");
            if(rs != null){
                while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt("ID")%></td>
                <td><%=rs.getInt("DNI")%></td>
                <td><%=rs.getString("TEXT")%></td>
            </tr>
                <%}
            }
            
            %>
                
        </table>
    </body>
</html>
