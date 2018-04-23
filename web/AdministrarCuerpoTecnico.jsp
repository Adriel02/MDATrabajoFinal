<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración cuerpo técnico</title>
    </head>
    <body>
        <h1>Administrar personal</h1>

        <h2>ENTRENADORES:</h2>
        
        
        
        
        
        
        
        
        
        
        
        
        <br>
        <form action="CrearCuerpoTecnico.jsp">
             <input type="hidden" name="tipo" value="entrenador">
            <button type="submit" name="Crear jugador">Crear Entrenador</button>
        </form>
        <form action="CrearCuerpoTecnico.jsp">
             <input type="hidden" name="tipo" value="directortecnico">
             <button type="submit" name="Crear jugador">Crear Director Tecnico</button>
        </form>
        <form action="CrearCuerpoTecnico.jsp">
             <input type="hidden" name="tipo" value="delegado">
            <button type="submit" name="Crear jugador">Crear Delegado</button>
        </form>
        <br>
    </body>
</html>