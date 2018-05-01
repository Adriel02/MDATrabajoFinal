<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración cuerpo técnico</title>
    </head>
    <body>
        <a href="PrincipalDirectorTecnico.jsp" > volver </a>
        <h1>Administrar personal</h1>

                    <%
                        ResultSet entrenadores = (ResultSet) request.getAttribute("entrenadores");
                        if (entrenadores != null) {%>
                        <h2>Entrenadores</h2>
                        <table>
                            <tr><th>DNI</th><th>Nombre</th><th>Apellido</th><th>Equipo</th></tr>
            <tr>
                <td><%=entrenadores.getInt("DNI")%></td>
                <td><%=entrenadores.getString("NOMBRE")%></td>
                <td><%=entrenadores.getString("APELLIDOS")%></td>
                <td><%=entrenadores.getInt("IDEQUIPO")%></td>

            </tr>
            <%while (entrenadores.next()) {%>
            <tr>
                <td><%=entrenadores.getInt("DNI")%></td>
                <td><%=entrenadores.getString("NOMBRE")%></td>
                <td><%=entrenadores.getString("APELLIDOS")%></td>
                <td><%=entrenadores.getInt("IDEQUIPO")%></td>

            </tr>
            <%}
            %>
        </table>
        <%}
        %>
        <form action="CrearCuerpoTecnico.jsp">
            <input type="hidden" name="tipo" value="entrenador">
            <button type="submit" name="Crear jugador">Crear Entrenador</button>
        </form>


                    <%
                        ResultSet directores = (ResultSet) request.getAttribute("directores");
                        if (directores != null) {%>
                        <h2>Director técnico</h2>
                        <table>
                            <tr><th>DNI</th><th>Nombre</th><th>Apellido</th></tr>
            <tr>
                <td><%=directores.getInt("DNI")%></td>
                <td><%=directores.getString("NOMBRE")%></td>
                <td><%=directores.getString("APELLIDOS")%></td>
            </tr>
            <% while (directores.next()) {%>
            <tr>
                <td><%=directores.getInt("DNI")%></td>
                <td><%=directores.getString("NOMBRE")%></td>
                <td><%=directores.getString("APELLIDOS")%></td>
            </tr>
            <%}
            %>
        </table>
        <%}
        %>
        <form action="CrearCuerpoTecnico.jsp">
            <input type="hidden" name="tipo" value="directortecnico">
            <button type="submit" name="Crear jugador">Crear Director Tecnico</button>
        </form>


        <%
            ResultSet delegados = (ResultSet) request.getAttribute("delegados");
            if (delegados != null) {%>
        <h2>Delegados</h2>
        <table>
            <tr><th>DNI</th><th>Nombre</th><th>Apellido</th><th>Equipo</th></tr>
            <tr>
                <td><%=delegados.getInt("DNI")%></td>
                <td><%=delegados.getString("NOMBRE")%></td>
                <td><%=delegados.getString("APELLIDOS")%></td>
                <td><%=delegados.getInt("IDEQUIPO")%></td>
            </tr>        
            <%
                    while (delegados.next()) {%>
            <tr>
                <td><%=delegados.getInt("DNI")%></td>
                <td><%=delegados.getString("NOMBRE")%></td>
                <td><%=delegados.getString("APELLIDOS")%></td>
                <td><%=delegados.getInt("IDEQUIPO")%></td>
            </tr>
            <%}
            %>
        </table>
        <%}
        %>

        <br>
        
        
        <form action="CrearCuerpoTecnico.jsp">
            <input type="hidden" name="tipo" value="delegado">
            <button type="submit" name="Crear jugador">Crear Delegado</button>
        </form>
        <br>
    </body>
</html>