<%-- 
    Document   : consultarVehiculo
    Created on : 18-may-2021, 7:28:57
    Author     : Julian
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.VehiculoDAO"%>
<%@page import="ModeloVO.VehiculoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/consular.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <title>Consultar</title>
    </head>
    <body>
        <div class="contenedor">
        <form method="POST" action="Vehiculo">
            <h3 class="text-center">Regisrar Vehiculo</h3>
                <div class="form-group">
                    <label for="Placa">Placa</label>
                    <input type="text" class="form-control" name="txtPlaca" id="Placa" placeholder="Escribe la placa del vehiculo">
                </div>
                
                <div class="text-center">
                    <button class="btn btn-primary btn-block">Buscar</button>
                </div>
                <input type="hidden" value="3" name="opcion">
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
        </div>
    <center><table>
                    <tr>
                        <th>Placa</th>
                        <th>Datos</th>
                        <th>Categoria</th>
                        <th>Modelo</th>
                        <th>Marca</th>
                        <th>Estado</th>
                        <th>Precio</th>
                    </tr>
                   
                <%
                VehiculoVO vehVO = new  VehiculoVO();
                VehiculoDAO vehDao = new VehiculoDAO();
                ArrayList<VehiculoVO>listarVehiculos= vehDao.listar();
                for (int i = 0; i < listarVehiculos.size(); i++) {
                        vehVO = listarVehiculos.get(i);
                %>
                <tr>
                    <td><%=vehVO.getVehPlaca()%></td>
                    <td><%=vehVO.getDatId()%></td>
                    <td><%=vehVO.getCatId()%></td>
                    <td><%=vehVO.getVehModelo()%></td>
                    <td><%=vehVO.getVehMarca()%></td>
                    <td><%=vehVO.getVehEstado()%></td>
                    <td><%=vehVO.getVehPrecio()%></td>
               <%}%>
                <tr>
            </table>
    </center>
        
    </body>
</html>
