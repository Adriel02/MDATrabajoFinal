<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editando Entrenador</title>
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Editando Entrenador</h1>
        <form>
            <input type="hidden" name="oldDNI" value="<%=request.getParameter("DNI")%>">
            <input type="hidden" name="command" value="Acciones.ActualizarDirectorTecnico">
            <br>DNI:<input type="number" name="DNI" placeholder="DNI" required="required" value="<%=request.getParameter("DNI")%>"/>
            <br>Nombre:<input type="text" name="NOMBRE" placeholder="Nombre" required="required" value="<%=request.getParameter("NOMBRE")%>"/>
            <br>Apellidos:<input type="text" name="APELLIDO" placeholder="Apellido" required="required" value="<%=request.getParameter("APELLIDOS")%>"/>
            <br><input type="submit" value="Actualizar"/>
        </form>
    </body>
</html>