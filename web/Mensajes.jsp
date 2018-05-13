<%-- 
    Document   : Mensajes
    Created on : 06-may-2018, 12:01:18
    Author     : nauzetaduen
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Recursos/tablas.css">

        <title>Mensajes</title>
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>

        <h1>Mensajes</h1>
        <div id="div"><table class="table-striped table-hover" id="tabla">
            <tr><th>ID</th><th>DNI</th><th>Mensaje</th><th>Estado</th></tr>
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("mensajes");
                        if (rs != null) {
                            while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt("ID")%></td>
                <td><%=rs.getInt("DNI")%></td>
                <td><%=rs.getString("TEXT")%></td>
                <%
                    if (rs.getInt("LEIDO") == 0) {%>
                <td>No leido</td> 
                <td>
                    <form action="/FrontServlet" method="post" id="form">
                        <input type="hidden" name="command" value="Acciones.ActualizarMensajes">
                        <input type="hidden" name="ID" value="<%=rs.getInt("ID")%>">
                        <input type="submit" name="actualizar" value="Marcar como leído">
                    </form>
                </td>      
                <%} else {%>
                <td>Leido</td>
                <%}%>
            </tr>
            <%}
                }
            %>

        </table> </div>
    </body>
</html>
