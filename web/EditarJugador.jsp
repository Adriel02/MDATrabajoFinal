<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editando Jugador</title>
    </head>
    <body>
        <h1>Editando jugador</h1>
        <form>
            <input type="hidden" name="oldDNI" value="<%=request.getAttribute("oldDNI")%>">
            <input type="hidden" name="command" value="Acciones.ActualizarJugador">
            <input type="number" name="DNI" placeholder="DNI" required="required" value="<%=request.getParameter("DNI")%>"/>
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required" value="<%=request.getParameter("NOMBRE")%>"/>
            <input type="text" name="APELLIDO" placeholder="Apellido" required="required" value="<%=request.getParameter("APELLIDO")%>"/>
            <input type="text" name="IDEQUIPO" placeholder="Código del equipo" value="<%=request.getParameter("IDEQUIPO")%>"/>
            <input type="submit" value="Actualizar"/>
        </form>
    </body>
</html>
