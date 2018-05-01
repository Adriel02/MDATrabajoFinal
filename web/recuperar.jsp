
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Recupera tu contraseña: 10€</h1>
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.EnviarMensaje"><br>
            <input type="text" name="DNI" placeholder="Pon tu DNI"><br>
            <textarea name="textarea">HOLA
            </textarea><br>
            <input type="submit" value="Recuperar!"/>
            
        </form>
    </body>
</html>
