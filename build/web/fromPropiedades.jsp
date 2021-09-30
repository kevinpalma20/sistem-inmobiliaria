<%-- 
    Document   : fromPropiedades
    Created on : 29-sep-2021, 20:47:16
    Author     : kpalmall
--%>
<%@page import="data.*"%>
<%@page import="java.util.List"%>
<%@page import="service.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulario de propiedades</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <% type_propertyService type_propertyService = new type_propertyService(); %>
    <% propertyService propertyService = new propertyService(); %>
    
    <% List listType = type_propertyService.findAll(); %>
    <% List listProp = propertyService.findAll(); %>
    <body> 
        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-3 ">
                        <form action="PropertiesController" method="post">  
                            <h3>Registro de propiedades</h3> 
                            <div class="mb-3">
                                <label class="form-label">Nombre</label>
                                <input type="text" class="form-control" > 
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Descipción</label>
                                <input type="text" class="form-control" > 
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Precio</label>
                                <input type="number" class="form-control" > 
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Typo de propiedad</label>
                                <select name="Categoria" class="form-control">
                                    <% for (int i = 0; i < listType.size(); i++) { %>
                                        <% type_property obj = (type_property) listType.get(i);%>
                                        <option value='<%= obj.getId()%>'><%= obj.getName() %></option>
                                    <% }%>
                                </select>
                            </div>
                            <button type="submit" name="action" value="registrar" class="btn btn-primary">Registrar</button>
                            <button type="submit" name="action" value="regresar" class="btn btn-light">Regresar</button>
                        </form>
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            Registrado correctamente
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-5 offset-xl-1 ">
                        
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">NAME</th>
                                    <th scope="col">DESCRIPTION</th>
                                    <th scope="col">PRICE</th>
                                    <th scope="col">TYPE</th> 
                                    <th scope="col">PHOTO</th> 
                                    <th scope="col">STATE</th> 
                                </tr>
                            </thead>
                            <tbody>
                                
                                <% for (int i = 0; i < listProp.size(); i++) { %>
                                <% property objp = (property) listProp.get(i);%>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td> <%= objp.getName() %> </td> 
                                        <td> <%= objp.getDescription() %> </td> 
                                        <td> <%= objp.getPrice() %> </td> 
                                    </tr> 
                                <% }%>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </div> 
        </section>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>
