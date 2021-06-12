<%-- 
    Document   : menu
    Created on : 10-may-2021, 9:32:01
    Author     : Julian
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<script src="Validaciones.js" type="text/javascript"></script>

<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Menu</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" integrity="sha512-mG7Xo6XLlQ13JGPQLgLxI7bz8QlErrsE9rYQDRgF+6AlQHm9Tn5bh/vaIKxBmM9mULPC6yizAhEmKyGgNHCIvg==" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    
  </head>
  <body>
      <select onchange="redireccion(value)">
            <option>Seleccione Rol...</option>
            
            <%
            UsuarioVO usuVO = new UsuarioVO();
            ArrayList <UsuarioVO> listaRoles = (ArrayList <UsuarioVO>)buscarSesion.getAttribute("roles");
            for (int i = 0; i < listaRoles.size(); i++) {
                    
                usuVO = listaRoles.get(i); 
            %>
            <option value="<%=usuVO.getRolTIpo()%>"><%=usuVO.getRolTIpo()%></option>
            
            <%}%>
        </select>
        </select>
      </select>
    <input type="checkbox" id="check">
    <label for="check">
      <i class="fas fa-bars" id="btn"></i>
      <i class="fa fa-chevron-circle-left" id="cancel"></i>
    </label>
    <div class="sidebar">
        <header><p class="titulo">Academia Bootischol</p>  </header>
    <ul>
     <li><a href="registrarVehiculo.jsp"><i class="fas fa-qrcode"></i>Vehiculo</a></li>
     <li><a href="#"><i class="fa fa-user-plus"></i>Usuario</a></li>
     <li><a href="#"><i class="fas fa-calendar-week"></i>Horarios</a></li>
     <li><a href="#"><i class="fas fa-stream"></i>Gestionar Estudiantes</a></li>
    </ul>
   </div>
   <section></section>
       
   </form>
  </body>
</html>
