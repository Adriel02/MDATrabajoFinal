<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Equipo</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <h1>Crear Equipo</h1>
        <form action="/FrontServlet" method="post" id="form">
            <input type="hidden" name="command" value="Acciones.CrearEquipo">
            <input type="text" name="IDEQUIPO" placeholder="Código del equipo" />
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required"/>
            <input type="number" name="DNIPRIMERENTRENADOR" placeholder="DNI Primer Entrenador" />
            <input type="number" name="DNISEGUNDOENTRENADOR" placeholder="DNI Segundo Entrenador" />
            <input type="number" name="DNIDELEGADO" placeholder="DNI Delegado" required="required"/>
            <input type="text" name="CATEGORIA" placeholder="Categoria" required="required"/>
            <input type="submit" value="Crear"/>
        </form>
    </body>
</html>