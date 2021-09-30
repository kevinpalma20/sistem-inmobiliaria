<%-- 
    Document   : index
    Created on : 29-sep-2021, 20:44:22
    Author     : kpalmall
--%>

<%@page import="model.employeeModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Inmobiliaria Java Mysql</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head> 
    
    <% employeeModel model = (employeeModel)session.getAttribute("sessionEmp"); %>
    <body>
        <header>  
            <nav class="navbar navbar-light bg-light">
                <span class="mx-2">Bienvenido <%= model.getFirtsname().concat(" ").concat( model.getLastname() ) %> </span>
                <form class="d-flex" action="AuthController" method="post"> 
                    <button name="action" value="close" class="btn btn-outline-danger" type="submit">Cerrar sesión</button>
                 </form>
            </nav>
            <h1 class="text-center">DLINMOBILIA</h1>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" >DLINMOBILIA</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                            </li>   
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="#">Venta</a>
                            </li> 
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="#">Alquiler</a>
                            </li> 
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="#">Servicios</a>
                            </li> 
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="#">Contacto</a>
                            </li>
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="fromPropiedades.jsp">Registro Propiedades</a>
                            </li>  
                            <li class="nav-item mx-2">
                                <a class="nav-link active" aria-current="page" href="fromAgentes.jsp">Registro Agentes</a>
                            </li>   
                        </ul> 
                    </div>
                </div>
            </nav> 
        </header>  
        
        <center>
            <div id="carouselExampleControls" class="carousel slide w-50" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://www.berdinodiaz.com/wp-content/uploads/2019/08/elegir-un-agente-inmobiliario.jpg" style="height: 30rem;" class="d-block w-100" >
                    </div>
                    <div class="carousel-item">
                        <img src="https://portal.andina.pe/EDPfotografia3/Thumbnail/2021/07/22/000792149W.jpg" style="height: 30rem;" class="d-block w-100" >
                    </div> 
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </center>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>
