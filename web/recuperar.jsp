<%-- 
    Document   : recuperar
    Created on : 30-abr-2018, 12:05:51
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="Index.jsp"><button>Volver</button></a>
        <h1>Recuperar tu contraseña</h1>
        <form action="/FrontServlet" method="post">
            <input type="hidden" name="command" value="Acciones.EnviarMensaje"><br>
            Introduzca el DNI <br><input type="text" name="DNI" placeholder="DNI" required="" autofocus=""><br><br>       
            Introduzca cual es su problema <br><textarea name="textarea" rows="6" cols="30" required="">
            </textarea><br>
            <input type="submit" value="Recuperar contraseña"/>

        </form>
    </body>
</html>
