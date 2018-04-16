<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina principal</title>
    </head>
    <body>
        <h1>Bienvenido director técnico</h1>
        <br>
        <h3>Seleccione una opción</h3>
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.MostrarJugadores">
            <button type="submit" name="Administrar jugadores">Administrar jugadores</button>
        </form>
        <form action="AdministrarCuerpoTecnico.jsp">
            <button type="submit" name="Administrar cuerpo técnico">Administrar el cuerpo técnico</button>
        </form>
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.MostrarEquipos">
            <button type="submit" name="Administrar Equipos">Administrar Equipos</button>
        </form>
    </body>
</html>


<input type="hidden" name="command" value="cuenta.Login">