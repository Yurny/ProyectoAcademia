<%-- 
    Document   : menu
    Created on : 10-may-2021, 9:32:01
    Author     : Yurny
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>

<!DOCTYPE html>


<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Menu Vendedor</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" integrity="sha512-mG7Xo6XLlQ13JGPQLgLxI7bz8QlErrsE9rYQDRgF+6AlQHm9Tn5bh/vaIKxBmM9mULPC6yizAhEmKyGgNHCIvg==" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    
  </head>
  <body>
      <center><h1>Vendedor</h1></center>
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
