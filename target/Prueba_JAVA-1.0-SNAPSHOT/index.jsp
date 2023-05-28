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
            <a class="navbar-brand" >Sistema de Facturas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Facturas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="products.jsp">Productos</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div >
            <div class="card ">
                <div class="card-body">
                    <h5 class="card-title">Facturas</h5>
                    <h6 class="card-subtitle mb-2 text-muted">En este panel podras gestionar los datos de la Facturas del sistema</h6>
                    <div>
                        <form action="Controlador?menu=Facturas" method="POST">
                            <div class="form-group">
                                <label>Numero de Factura</label>
                                <input type="number" class="form-control" name="txtnofactura">
                                <small class="form-text text-muted">Ingrese El No de factura sin espacios ni caracteres especiales</small>
                            </div>
                            <div class="form-group">
                                <label>Fecha</label>
                                <input type="date" class="form-control" name="txtfecha"">
                            </div>
                            <div class="form-group">
                                <label>Tipo de pago</label>
                                <input type="text" class="form-control" name="txtpago">
                            </div>
                            <div class="form-group">
                                <label>Documento Cliente</label>
                                <input type="text" class="form-control" name="txtdocumento">
                            </div>
                            <div class="form-group">
                                <label>Nombre Cliente</label>
                                <input type="text" class="form-control" name="txtnombre">
                            </div>
                            <div class="form-group">
                                <label>Subtotal</label>
                                <input type="text" class="form-control" name="txtsubtotal">
                            </div>
                            <div class="form-group">
                                <label>Descuento</label>
                                <input type="text" class="form-control" name="txtdescuento">
                            </div>
                            <div class="form-group">
                                <label>Iva</label>
                                <input type="text" value='19' class="form-control" name="txtiva">
                            </div>
                            <div class="form-group">
                                <label>Total descuento</label>
                                <input type="text" class="form-control" name="txttotaldescuento">
                            </div>
                            <div class="form-group">
                                <label>Total Impuesto</label>
                                <input type="text" class="form-control" name="txttotalimpuesto">
                            </div>
                            <div class="form-group">
                                <label>Total</label>
                                <input type="text" class="form-control" name="txttotal">
                            </div>

                            <input type="submit" class="btn btn-primary" name="accion" value="Agregar" >
                            <input type="submit" class="btn btn-success" name="accion" value="Actualizar" >
                        </form>
                    </div>
                </div>
            </div>


            <div class="col-md-12">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Numero Factura</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Tipo de pago</th>
                            <th scope="col">Documento Cliente</th>
                            <th scope="col">Nombre Cliente</th>
                            <th scope="col">Subtotal</th>
                            <th scope="col">Descuento</th>
                            <th scope="col">Iva</th>
                            <th scope="col">Total descuento</th>
                            <th scope="col">Total impuesto</th>
                            <th scope="col">Total</th>
                        </tr>
                    </thead>
                    <tbody>



                    </tbody>
                </table>
            </div>
            <div class="m-3" style="height:900px;">
                <iframe name="miContenedor" style="height:100%; width:100%;" frameBorder="1"></iframe>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </body>
</html>