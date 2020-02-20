<%-- 
    Document   : login
    Created on : 19-feb-2020, 2:04:48
    Author     : Arlisi
--%>
<%@page import="dao.BaseDatos_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Página Principal</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"  crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"  crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-light" style="background-color: #F2D7D5;">
            <a class="navbar-brand" href="./">
                <img src="./media/img/uam_logo.png" height="30" class="d-inline-block align-top" alt="">
                Eventos UAM
            </a>

            <%
                if (session.getAttribute("user") != null) {
                    out.println("<a href=\"./formulario.jsp\">Agregar Evento</a>");
                }
            %>

            <div>
                <%
                    if (session.getAttribute("user") != null) {
                        out.println(session.getAttribute("user"));
                        out.println("<a href=\"./logoutServlet\">Logout</a>");
                    } else {
                        out.println("<a href=\"./login.jsp\">Login</a>");
                    }
                %>

            </div>

        </nav>

        <!-- Carrusel  -->
        <div style="width: 30%; margin-left: auto; margin-right: auto; margin-top: 20px;">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" >
                        <img class="d-block w-100" src="./media/img/uamDanza.jpg" alt="First slide" >
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="./media/img/uamBaile.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="./media/img/uamDog.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div style="text-align: center">
            <h3>Eventos</h3>
            <% 
                ArrayList<String> lista = new BaseDatos_DAO().listaEventos();
                for(int x = 0; x < lista.size(); x++){
                    out.println("<p>"+lista.get(x) + "</p>");
                }
                
            %>
        </div>
    </body>
</html>
