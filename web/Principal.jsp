<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.Model.Usuario"%>    
<!DOCTYPE html>
<html>
    <head style="background-color: #e9ead2">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
    </head>
    <body>
        
        <% ((Usuario) session.getAttribute("Usuario")).getNombre(); %>
        
        <h1>Hello World!</h1>
    </body>
</html>
