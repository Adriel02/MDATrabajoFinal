<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.Model.Usuario"%>    
<!DOCTYPE html>
<html>
    <head >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        
        <% ((Usuario) session.getAttribute("Usuario")).getNombre(); %>
        
        <h1>Hello World!</h1>
    </body>
</html>
