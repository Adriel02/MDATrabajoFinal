<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editando Delegado</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Editando Delegado</h1>
        <form>
            <input type="hidden" name="oldDNI" value="<%=request.getParameter("DNI")%>">
            <input type="hidden" name="command" value="Acciones.ActualizarDelegado">
            <br>DNI:<input type="number" name="DNI" placeholder="DNI" required="required" value="<%=request.getParameter("DNI")%>"/>
            <br>Nombre:<input type="text" name="NOMBRE" placeholder="Nombre" required="required" value="<%=request.getParameter("NOMBRE")%>"/>
            <br>Apellidos:<input type="text" name="APELLIDO" placeholder="Apellido" required="required" value="<%=request.getParameter("APELLIDOS")%>"/>
            <br>Id del equipo:<input type="text" name="IDEQUIPO" placeholder="Código del equipo" value="<%=request.getParameter("IDEQUIPO")%>"/>
            <br><input type="submit" value="Actualizar"/>
        </form>
    </body>
</html>