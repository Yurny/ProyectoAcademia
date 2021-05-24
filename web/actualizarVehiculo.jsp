<%-- 
    Document   : actualizarVehiculo
    Created on : 18-may-2021, 7:11:13
    Author     : Julian
--%>

<%@page import="ModeloVO.VehiculoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualizar</h1>
        <%
            VehiculoVO vehVO  =(VehiculoVO)request.getAttribute("vehiculo");
            if(vehVO != null){
        %>
                <div class="contenedor">
            <form method="POST" action="Vehiculo" class="login">
                <h3 class="text-center">Regisrar Vehiculo</h3>
                <div class="form-group">
                    <label for="Placa">Placa</label>
                    <input type="text" class="form-control" name="txtPlaca" id="Placa" placeholder="Escribe la placa del vehiculo" vulue="<%=vehVO.getVehPlaca()%>">
                </div>
                <div class="form-group">
                    <label for="Dato">Dato Id</label>
                    <input type="text" class="form-control" name="txtDatos" id="Dato" placeholder="Escribe tu dato Id"vulue="<%=vehVO.getDatId()%>">
                </div>
                <div class="form-group">
                    <label for="Categoria">Categoria ID</label>
                    <input type="text" class="form-control" name="txtCategoria" id="Categoria" placeholder="Escribe tu categorira"vulue="<%=vehVO.getCatId()%>">
                </div>
                <div class="form-group">
                    <label for="Modelo">Modelo</label>
                    <input type="text" class="form-control" name="txtModelo" id="Modelo" placeholder="Escribe el modelo"vulue="<%=vehVO.getVehModelo()%>">
                </div>
                <div class="form-group">
                    <label for="Marca">Marca</label>
                    <input type="text" class="form-control" name="txtMarca" id="Marca" placeholder="Escribe la marca"vulue="<%=vehVO.getVehMarca()%>">
                </div>
                <div class="form-group">
                    <label for="Estado">Estado</label>
                    <input type="text" class="form-control" name="txtEstado" id="Estado" placeholder="Escribe estado del vehiculo"vulue="<%=vehVO.getVehEstado()%>">
                </div>
                <div class="form-group">
                    <label for="Precio">Precio</label>
                    <input type="text" class="form-control" name="txtPrecio" id="Precio" placeholder="Escribe el precio"vulue="<%=vehVO.getVehPrecio()%>">
                </div>
                <div class="text-center">
                    <button class="btn btn-primary btn-block">Actualizar</button>
                </div>
                <input type="hidden" value="2" name="opcion">
            </form>
                <%}%>
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
</html>
