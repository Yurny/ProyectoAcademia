<%-- 
    Document   : registrarVehiculo
    Created on : 11-may-2021, 10:01:44
    Author     : Julian
--%>

<%@page import="ModeloVO.CategoriaVO"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <title>Regisrar Vehiculo</title>
    </head>
    <body>
        <div class="contenedor">
            <form method="POST" action="Vehiculo" class="login">
                <h3 class="text-center">Registrar Vehiculo</h3>
                <div class="form-group">
                    <label for="Placa">Placa</label>
                    <input type="text" class="form-control" name="txtPlaca" id="Placa" placeholder="Escribe la placa del vehiculo">
                </div>
                <div class="form-group">
                    <label for="Dato">Dato Id</label>
                    <input type="text" class="form-control" name="txtDatos" id="Dato" placeholder="Escribe tu dato Id">
                </div>
                <div class="form-group">
                    <label for="Categoria">Categoria</label>
                    <select name="txtCategoria">
                        <option value="0">Seleccione...</option>
                        <%
                          CategoriaDAO catDAO = new CategoriaDAO();
                          for(CategoriaVO catVO: catDAO.listar()){
                          
                        %>
                        <option value="<%=catVO.getCatId()%>"><%catVO.getCatTipo()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Modelo">Modelo</label>
                    <input type="text" class="form-control" name="txtModelo" id="Modelo" placeholder="Escribe el modelo">
                </div>
                <div class="form-group">
                    <label for="Marca">Marca</label>
                    <input type="text" class="form-control" name="txtMarca" id="Marca" placeholder="Escribe la marca">
                </div>
                <div class="form-group">
                    <label for="Estado">Estado</label>
                    <input type="text" class="form-control" name="txtEstado" id="Estado" placeholder="Escribe estado del vehiculo">
                </div>
                <div class="form-group">
                    <label for="Precio">Precio</label>
                    <input type="text" class="form-control" name="txtPrecio" id="Precio" placeholder="Escribe el precio">
                </div>
                <div class="text-center">
                    <button class="btn btn-primary btn-block">Ingresar</button>
                </div>
                <input type="hidden" value="1" name="opcion">
            </form>
            <div>
                <% if (request.getAttribute("mensajeError") != null) {%>
                <div  class="alert alert-danger" role="alert">
                    <p>${mensajeError} </p> 
                </div>
                <%} else {%>
                <div style="color:green;">
                    ${mensajeExito}
                </div>
                <%}%>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
</html>
