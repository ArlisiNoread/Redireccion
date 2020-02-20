<%-- 
    Document   : index
    Created on : 17/02/2020, 09:31:45 PM
    Author     : LuizStroke
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="recuperacionDeEvento">
            Ingrese nombre del evento:
            <input type="text" name="evento" size="20" required="required" pattern="^(?!\s*$).+"><br>
            Ingrese fecha:
            <input type="date" name="fecha" size="20" required="required"><br>
            Ingrese hora:
            <input type="time" name="hora" size="20" required="required"><br> 
            Salón:
            <input type="place" name="lugar" size="20" required="required" pattern="^(?!\s*$).+"><br>
            <input type="submit" value="confirmar">
        </form>
    </body>
</html>
