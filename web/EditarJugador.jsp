<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editando Jugador</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Editando jugador</h1>
        <form>
            <input type="hidden" name="oldDNI" value="<%=request.getAttribute("oldDNI")%>">
            <input type="hidden" name="command" value="Acciones.ActualizarJugador">
            <br>DNI:<input type="number" name="DNI" placeholder="DNI" required="required" value="<%=request.getParameter("DNI")%>"/>
            <br>Nombre:<input type="text" name="NOMBRE" placeholder="Nombre" required="required" value="<%=request.getParameter("NOMBRE")%>"/>
            <br>Apellidos:<input type="text" name="APELLIDO" placeholder="Apellido" required="required" value="<%=request.getParameter("APELLIDO")%>"/>
            <br>Identificador del equipo:<input type="text" name="IDEQUIPO" placeholder="Código del equipo" value="<%=request.getParameter("IDEQUIPO")%>"/>
            <br><input type="submit" value="Actualizar"/>
        </form>
    </body>
</html>
