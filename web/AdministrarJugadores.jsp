<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar jugadores</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Administración de jugadores</h1>
        <br>
        <div id="div"><table class="table-striped table-hover">
            <tr>
                <th>
                    DNI
                </th>
                <th>
                    Nombre
                </th>
                <th>
                    Apellidos
                </th>
                <th>
                    ID del equipo
                </th>
                <th>
                    Modificar
                </th>
                <th>
                    Eliminar
                </th>
            </tr>
            <%
                ResultSet rs = (ResultSet) request.getAttribute("noRs");
                if (rs != null) {
                    while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt("DNI")%></td>
                <td><%=rs.getString("NOMBRE")%></td>
                <td><%=rs.getString("APELLIDO")%></td>
                <td><%=rs.getInt("IDEQUIPO")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarJugador">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="DNI" value="<%=rs.getInt("DNI")%>">
                        <input type="hidden" name="NOMBRE" value="<%=rs.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDO" value="<%=rs.getString("APELLIDO")%>">
                        <input type="hidden" name="IDEQUIPO" value="<%=rs.getInt("IDEQUIPO")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarJugador">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="DNI" value="<%=rs.getInt("DNI")%>">
                        <input type="hidden" name="NOMBRE" value="<%=rs.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDO" value="<%=rs.getString("APELLIDO")%>">
                        <input type="hidden" name="IDEQUIPO" value="<%=rs.getInt("IDEQUIPO")%>">
                        <button type="submit" name="Eliminar">
                            <img src="/Recursos/eliminar.png"  alt="eliminar" />
                        </button>
                    </form>
                </td>
            </tr>
            <%}
            %>
        </table>
        <%}
        %>

        <br>
        <form action="CrearJugador.jsp">
            <button type="submit" name="Crear jugador">Crear nuevo jugador</button>
        </form></div> 
        <br>
    </body>
</html>