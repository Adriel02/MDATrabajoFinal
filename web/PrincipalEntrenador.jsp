<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.Model.Usuario"%>    
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerEntrenador.html" %>
        <h1>Bienvenido entrenador</h1>
        <br>
        <h3>Seleccione una opción</h3>
        <form action="AdministrarEquipos">
            <button type="submit" name="Administrar equipos">Administrar mis equipos</button>
        </form>
    </body>
</html>

