<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear jugador</title>
    </head>
    <body>
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