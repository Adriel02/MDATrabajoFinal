<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar Equipos</title>
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Administración de Equipos</h1>
        <br>
        <h3>Seleccione un Equipo</h3>
        <table>
            <tr>
                <th>
                    IDEquipo
                </th>
                <th>
                    Nombre
                </th>
                <th>
                    DNI Primer Entrenador
                </th>
                <th>
                    DNI Segundo Entrenador
                </th>
                <th>
                    DNI Delegado
                </th>
                <th>
                    Categoria
                </th>
                <th colspan="2">
                    Opciones
                </th>
            </tr>
            <%
                ResultSet rs = (ResultSet) request.getAttribute("noRs");
                if (rs != null) {
                while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt("IDEQUIPO")%></td>
                <td><%=rs.getString("NOMBRE")%></td>
                <td><%=rs.getInt("DNIPRIMERENTRENADOR")%></td>
                <td><%=rs.getInt("DNISEGUNDOENTRENADOR")%></td>
                <td><%=rs.getInt("DNIDELEGADO")%></td>
                <td><%=rs.getString("CATEGORIA")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarEquipo">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="IDEQUIPO" value="<%=rs.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=rs.getString("NOMBRE")%>">
                        <input type="hidden" name="DNIPRIMERENTRENADOR" value="<%=rs.getInt("DNIPRIMERENTRENADOR")%>">
                        <input type="hidden" name="DNISEGUNDOENTRENADOR" value="<%=rs.getInt("DNISEGUNDOENTRENADOR")%>">
                        <input type="hidden" name="DNIDELEGADO" value="<%=rs.getInt("DNIDELEGADO")%>">
                        <input type="hidden" name="CATEGORIA" value="<%=rs.getString("CATEGORIA")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarEquipo">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="IDEQUIPO" value="<%=rs.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=rs.getString("NOMBRE")%>">
                        <input type="hidden" name="DNIPRIMERENTRENADOR" value="<%=rs.getInt("DNIPRIMERENTRENADOR")%>">
                        <input type="hidden" name="DNISEGUNDOENTRENADOR" value="<%=rs.getInt("DNISEGUNDOENTRENADOR")%>">
                        <input type="hidden" name="DNIDELEGADO" value="<%=rs.getInt("DNIDELEGADO")%>">
                        <input type="hidden" name="CATEGORIA" value="<%=rs.getString("CATEGORIA")%>">
                        <button type="submit" name="Editar">
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
        <form action="CrearEquipo.jsp">
            <button type="submit" name="Crear jugador">Crear nuevo Equipo</button>
        </form>
        <br>
    </body>
</html>