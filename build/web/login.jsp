<%-- 
    Document   : login
    Created on : 19-feb-2020, 2:04:48
    Author     : Arlisi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String badLogin = (String) session.getAttribute("badLogin");
            if ((badLogin == null) || (badLogin == "")) {
                badLogin = "false";
            }else{
                session.removeAttribute("badLogin");
            }

        %>
        <title>Formulario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>   

        <form method="post" action="./loginServlet">
            <h1>Usuario</h1>
            <input type='text' placeholder='Usuario' value='' name='user'/>
            <br>
            <h1>Contraseña</h1>
            <input type='password' placeholder='Password' value='' name='pass'/>
            <br><br><input type='submit' id='btnEnviar' value='Enviar' name='btnEnviar'>
        </form>
        <%            if (badLogin.equals("true")) {
                out.println("<p>Datos Incorrectos</p>");
            }
        %>
    </body>
</html>
