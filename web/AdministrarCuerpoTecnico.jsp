<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración cuerpo técnico</title>
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Administrar personal</h1>

                    <%
                        ResultSet entrenadores = (ResultSet) request.getAttribute("entrenadores");
                        if (entrenadores != null) {%>
                        <h2>Entrenadores</h2>
                        <table>
                            <tr><th>DNI</th><th>Nombre</th><th>Apellido</th><th>Equipo</th><th colspan="2">Opciones</th></tr>
            <tr>
                <td><%=entrenadores.getInt("DNI")%></td>
                <td><%=entrenadores.getString("NOMBRE")%></td>
                <td><%=entrenadores.getString("APELLIDOS")%></td>
                <td><%=entrenadores.getInt("IDEQUIPO")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarEntrenador">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="IDEQUIPO" value="<%=entrenadores.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=entrenadores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=entrenadores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=entrenadores.getInt("DNI")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarEntrenador">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="IDEQUIPO" value="<%=entrenadores.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=entrenadores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=entrenadores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=entrenadores.getInt("DNI")%>">
                        <button type="submit" name="Eliminar">
                            <img src="/Recursos/eliminar.png"  alt="eliminar" />
                        </button>
                    </form>
                </td>
            </tr>
            <%while (entrenadores.next()) {%>
            <tr>
                <td><%=entrenadores.getInt("DNI")%></td>
                <td><%=entrenadores.getString("NOMBRE")%></td>
                <td><%=entrenadores.getString("APELLIDOS")%></td>
                <td><%=entrenadores.getInt("IDEQUIPO")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarEntrenador">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="IDEQUIPO" value="<%=entrenadores.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=entrenadores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=entrenadores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=entrenadores.getInt("DNI")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarEntrenador">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="IDEQUIPO" value="<%=entrenadores.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=entrenadores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=entrenadores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=entrenadores.getInt("DNI")%>">
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
        <form action="CrearCuerpoTecnico.jsp">
            <input type="hidden" name="tipo" value="entrenador">
            <button type="submit" name="Crear jugador">Crear Entrenador</button>
        </form>


                    <%
                        ResultSet directores = (ResultSet) request.getAttribute("directores");
                        if (directores != null) {%>
                        <h2>Director técnico</h2>
                        <table>
                            <tr><th>DNI</th><th>Nombre</th><th>Apellido</th><th colspan="2">Opciones</th></tr>
            <tr>
                <td><%=directores.getInt("DNI")%></td>
                <td><%=directores.getString("NOMBRE")%></td>
                <td><%=directores.getString("APELLIDOS")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarDirectorTecnico">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="NOMBRE" value="<%=directores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=directores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=directores.getInt("DNI")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarDirectorTecnico">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="NOMBRE" value="<%=directores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=directores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=directores.getInt("DNI")%>">
                        <button type="submit" name="Eliminar">
                            <img src="/Recursos/eliminar.png"  alt="eliminar" />
                        </button>
                    </form>
                </td>
            </tr>
            <% while (directores.next()) {%>
            <tr>
                <td><%=directores.getInt("DNI")%></td>
                <td><%=directores.getString("NOMBRE")%></td>
                <td><%=directores.getString("APELLIDOS")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarDirectorTecnico">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="NOMBRE" value="<%=directores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=directores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=directores.getInt("DNI")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarDirectorTecnico">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="NOMBRE" value="<%=directores.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=directores.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=directores.getInt("DNI")%>">
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
        <form action="CrearCuerpoTecnico.jsp">
            <input type="hidden" name="tipo" value="directortecnico">
            <button type="submit" name="Crear jugador">Crear Director Tecnico</button>
        </form>


        <%
            ResultSet delegados = (ResultSet) request.getAttribute("delegados");
            if (delegados != null) {%>
        <h2>Delegados</h2>
        <table>
            <tr><th>DNI</th><th>Nombre</th><th>Apellido</th><th>Equipo</th><th colspan="2">Opciones</th></tr>
            <tr>
                <td><%=delegados.getInt("DNI")%></td>
                <td><%=delegados.getString("NOMBRE")%></td>
                <td><%=delegados.getString("APELLIDOS")%></td>
                <td><%=delegados.getInt("IDEQUIPO")%></td>
                <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarDelegado">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="IDEQUIPO" value="<%=delegados.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=delegados.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=delegados.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=delegados.getInt("DNI")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                       <input type="hidden" name="command" value="Acciones.EditarDelegado">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="IDEQUIPO" value="<%=delegados.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=delegados.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=delegados.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=delegados.getInt("DNI")%>">
                        <button type="submit" name="Eliminar">
                            <img src="/Recursos/eliminar.png"  alt="eliminar" />
                        </button>
                    </form>
                </td>
            </tr>        
            <%
                    while (delegados.next()) {%>
            <tr>
                <td><%=delegados.getInt("DNI")%></td>
                <td><%=delegados.getString("NOMBRE")%></td>
                <td><%=delegados.getString("APELLIDOS")%></td>
                <td><%=delegados.getInt("IDEQUIPO")%></td>
                 <td><form action="/FrontServlet" method="post">
                        <input type="hidden" name="command" value="Acciones.EditarDelegado">
                        <input type="hidden" name="option" value="Editar">
                        <input type="hidden" name="IDEQUIPO" value="<%=delegados.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=delegados.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=delegados.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=delegados.getInt("DNI")%>">
                        <button type="submit" name="Editar">
                            <img src="/Recursos/edit.png"  alt="editar" />
                        </button>
                    </form>
                </td>
                <td><form action="/FrontServlet" method="post">
                       <input type="hidden" name="command" value="Acciones.EditarDelegado">
                        <input type="hidden" name="option" value="Eliminar">
                        <input type="hidden" name="IDEQUIPO" value="<%=delegados.getInt("IDEQUIPO")%>">
                        <input type="hidden" name="NOMBRE" value="<%=delegados.getString("NOMBRE")%>">
                        <input type="hidden" name="APELLIDOS" value="<%=delegados.getString("APELLIDOS")%>">
                        <input type="hidden" name="DNI" value="<%=delegados.getInt("DNI")%>">
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
        <form action="CrearCuerpoTecnico.jsp">
            <input type="hidden" name="tipo" value="delegado">
            <button type="submit" name="Crear jugador">Crear Delegado</button>
        </form>
        <br>
    </body>
</html>