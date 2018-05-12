<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Recursos/tablas.css">
        <title>Pagina principal</title>
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Bienvenido director técnico</h1>
        <br>
        
        <h4>
            Bienvenido a la aplicacion IBAPP. Esta usted logeado como Director técnico y podrá hacer uso de las funcionalidades que aparecen
            en la barra de navegacion que esta justo en la parte superior. 
        </h4><br>
        <img id="img" src="https://www.wentzville.k12.mo.us/cms/lib/MO02202303/Centricity/Domain/107/mean-basketball_right.png" >
        <!--
        <h3>Seleccione una opción</h3>
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.MostrarJugadores">
            <button type="submit" name="Administrar jugadores">Administrar jugadores</button>
        </form>

        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.MostrarCuerposTecnicos">
            <button type="submit" name="Administrar cuerpo técnico">Administrar cuerpo técnico</button>
        </form>
        
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.MostrarEquipos">
            <button type="submit" name="Administrar Equipos">Administrar Equipos</button>
        </form>
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="cuenta.MostrarMensajes">
            <button type="submit" name="Mensajes">Mensajes</button>
        </form> -->
    </body>
</html>


<input type="hidden" name="command" value="cuenta.Login">