<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración equipos</title>
    </head>
    <body>
        <h1>Administrar equipos</h1>
        <br>
        <h3>Seleccione un equipo</h3>
        //buscarEnEquipos(entrenador);
        
        <%
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
        String query = "select * from ADMIN1.JUGADOR where IDEQUIPO=1";
        PreparedStatement statement = con.prepareStatement(query);
        ResultSet rs = statement.executeQuery();
        String[] jugadores= new String[12];
        int i=0;
        while(rs.next()){
            jugadores[i]=rs.getString("NOMBRE")+" "+ rs.getString("APELLIDO")+" "+ rs.getInt("DNI");
            i++;
        %>
        <%=jugadores[2]%><br>
        <%}
    %>
        <%--
            AQUI VA UNA LISTA DE EQUIPOS A LOS QUE PERTENEZCA EL ENTRENADOR
            Si seleccionamos un equipo se activan los botones inferiores
        --%>
        <form action="paginaVerDetalleEquipo">
            <button type="submit" name="Ver equipos">Consultar detalles</button>
        </form>
        <br>
        <form action="paginaEditarEquipos">
            <button type="submit" name="Editar equipos">Editar</button>
        </form>
        <br>
        <form action="paginaCrearEquipo">
            <button type="submit" name="Crear equipo">Crear un nuevo equipo</button>
        </form>
        <br>
        <form action="paginaEliminarEquipo">
            <button type="submit" name="Eliminar equipo">Eliminar equipo</button>
        </form>
    </body>
</html>