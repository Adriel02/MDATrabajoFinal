<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editando Equipo</title>
                <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="Recursos/tablas.css">
         <link rel="stylesheet" href="Recursos/main.css">
    </head>
    <body>
        <%@ include file="/headerDirectorTecnico.html" %>
        <h1>Editando Equipo</h1>
        <form>
            <input type="hidden" name="command" value="Acciones.ActualizarEquipo">
            <input type="hidden" name="oldIDEQUIPO" value="<%=request.getParameter("IDEQUIPO")%>"/>
            Identificador del equipo:<input type="text" name="IDEQUIPO" placeholder="IdEquipo" required="required" value="<%=request.getParameter("IDEQUIPO")%>"/>
            <br>Nombre del equipo:<input type="text" name="NOMBRE" placeholder="Nombre" required="required" value="<%=request.getParameter("NOMBRE")%>"/>
            <br>DNI del primer entrenador:<input type="number" name="DNIPRIMERENTRENADOR" placeholder="DNI Primer Entrenador" required="required" value="<%=request.getParameter("DNIPRIMERENTRENADOR")%>"/>
            <br>DNI del segundo entrenador:<input type="number" name="DNISEGUNDOENTRENADOR" placeholder="DNI Segundo Entrenador" required="required" value="<%=request.getParameter("DNISEGUNDOENTRENADOR")%>"/>
            <br>DNI del delegado:<input type="number" name="DNIDELEGADO" placeholder="DNI Delegado" required="required" value="<%=request.getParameter("DNIDELEGADO")%>"/>
            <br>Categoría:<input type="text" name="CATEGORIA" placeholder="Categoria" required="required" value="<%=request.getParameter("CATEGORIA")%>"/>
            <br><input type="submit" value="Actualizar"/>
        </form>
    </body>
</html>
