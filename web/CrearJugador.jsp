<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear jugador</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Crear jugador</h1>
        <form action="/FrontServlet" method="post" id="form">
            <input type="hidden" name="command" value="Acciones.CrearJugador">
            <input type="number" name="DNI" placeholder="DNI" required="required"/>
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required"/>
            <input type="text" name="APELLIDO" placeholder="Apellido" required="required"/>
            <input type="text" name="IDEQUIPO" placeholder="Código del equipo"/>
            <input type="submit" value="Crear"/>
        </form>
    </body>
</html>