<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración cuerpo técnico</title>
    </head>
    <body>
        <h1>Administrar personal</h1>
        <br>
        <h3>Seleccione una persona</h3>
        <%--
            AQUI VA UNA LISTA DE LAS PERSONAS CON SUS ROLES
            Si seleccionamos una persona se activan los botones inferiores
        --%>
        <form action="paginaVerPersonal">
            <button type="submit" name="Consultar detalles">Consultar detalles</button>
        </form>
        <br>
        <form action="paginaEditarPersonal">
            <button type="submit" name="Editar personal">Editar</button>
        </form>
        <br>
        <form action="paginaCrearPersonal">
            <button type="submit" name="Crear personal">Crear nuevo</button>
        </form>
        <br>
        <form action="paginaEliminarPersonal">
            <button type="submit" name="Eliminar personal">Eliminar personal</button>
        </form>
    </body>
</html>