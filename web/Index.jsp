<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Aresti's APP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Recursos/CssLogiin.css">
        <link rel="stylesheet" href="Recursos/newcss.css">
    </head>
    <body>

        <form action="/FrontServlet" method="post" id="form">
            <div class="Login">
                <h1>Login</h1>
                <input type="text" name="usuario" placeholder="Usuario" required="required" autofocus="" />
                <input type="password" name="pass" placeholder="Contraseña" required="required" />
                <input type="hidden" name="command" value="cuenta.Login">
                <select name="type" required="required">
                    <option value="director">Director Técnico</option>
                    <option value="entrenador">Entrenador</option>
                    <option value="segundoentrenador">Segundo Entrenador</option>
                </select>
                <button type="submit" class="btn btn-primary btn-block btn-large" class="myButton">Entrar</button>
            </div>
        </form> 
    </body>
</html>