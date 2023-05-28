<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Listado de Facturas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand">Sistema de Facturas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Facturas</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="products.jsp">Productos</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-4">
            <h1>Lista de productos:</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID Producto</th>
                        <th>Producto</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Product> products = (List<Product>) request.getAttribute("products");
                        if (products != null) {
                            for (Product product : products) {%>
                    <tr>
                        <td><%= product.getIdProducto()%></td>
                        <td><%= product.getProducto()%></td>
                    </tr>
                    <%     }
                        }%>
                </tbody>
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>