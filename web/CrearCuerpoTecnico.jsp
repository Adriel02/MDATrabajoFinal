<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cuerpo Tecnico</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Crear Cuerpo Tecnico</h1>
        <%if (request.getParameter("tipo").equals("entrenador")) {%>
        <form action="/FrontServlet" method="post" id="form">
            <input type="hidden" name="command" value="Acciones.CrearCuerpoTecnico">
            <input type="hidden" name="tipo" value="entrenador">
            <input type="number" name="DNI" placeholder="DNI" required="required" />
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required"/>
            <input type="text" name="APELLIDO" placeholder="APELLIDOS" required="required"/>
            <input type="number" name="IDEQUIPO" placeholder="IDEQUIPO" required="required" />
            <input type="password" name="PASSWORD" placeholder="PASSWORD" required="required" />
            <input type="submit" value="Crear"/>
        </form>
        <% }%>

        <%if (request.getParameter("tipo").equals("directortecnico")) {%>
        <form action="/FrontServlet" method="post" id="form">
            <input type="hidden" name="command" value="Acciones.CrearCuerpoTecnico">
            <input type="hidden" name="tipo" value="directortecnico">
            <input type="number" name="DNI" placeholder="DNI" required="required" />
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required"/>
            <input type="text" name="APELLIDO" placeholder="APELLIDOS" required="required" />
            <input type="password" name="PASSWORD" placeholder="PASSWORD" required="required" />
            <input type="submit" value="Crear"/>
        </form>
        <% }%>

        <%if (request.getParameter("tipo").equals("delegado")) {%>
        <form action="/FrontServlet" method="post" id="form">
            <input type="hidden" name="command" value="Acciones.CrearCuerpoTecnico">
            <input type="hidden" name="tipo" value="delegado">
            <input type="number" name="DNI" placeholder="DNI" required="required" />
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required"/>
            <input type="text" name="APELLIDO" placeholder="APELLIDOS" required="required" />
            <input type="number" name="IDEQUIPO" placeholder="IDEQUIPO" required="required" />
            <input type="submit" value="Crear"/>
        </form>
        <% }%>
    </body>
</html>