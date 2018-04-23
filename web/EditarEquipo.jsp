<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color: #e9ead2">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editando Equipo</title>
    </head>
    <body>
        <h1>Editando Equipo</h1>
        <form>
            <input type="hidden" name="command" value="Acciones.ActualizarEquipo">
            <input type="hidden" name="IDEQUIPO" value="<%=request.getParameter("IDEQUIPO")%>"/>
            <input type="text" name="NOMBRE" placeholder="Nombre" required="required" value="<%=request.getParameter("NOMBRE")%>"/>
            <input type="number" name="DNIPRIMERENTRENADOR" placeholder="DNI Primer Entrenador" required="required" value="<%=request.getParameter("DNIPRIMERENTRENADOR")%>"/>
            <input type="number" name="DNISEGUNDOENTRENADOR" placeholder="DNI Segundo Entrenador" required="required" value="<%=request.getParameter("DNISEGUNDOENTRENADOR")%>"/>
            <input type="number" name="DNIDELEGADO" placeholder="DNI Delegado" required="required" value="<%=request.getParameter("DNIDELEGADO")%>"/>
            <input type="text" name="CATEGORIA" placeholder="Categoria" required="required" value="<%=request.getParameter("CATEGORIA")%>"/>
            <input type="submit" value="Actualizar"/>
        </form>
    </body>
</html>
