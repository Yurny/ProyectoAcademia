<%-- 
    Document   : Sesiones
    Created on : 31-may-2021, 9:08:18
    Author     : Lanix
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-control", "No-cache,no-store,must-revalidate");
    response.setDateHeader("Expires",0);
%>
<%
    HttpSession buscarSesion =(HttpSession)request.getSession();
    String usuario="";
    
    if (buscarSesion.getAttribute("datos") ==null) {
        request.getRequestDispatcher("index.jsp").forward(request, response);    
        }else{
        UsuarioVO usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
        usuario = usuVO.getUsulogin();
    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <title>Menu</title>
    </head>
    <body>
       <div style="float: right;">
           <h1>Bienvenido:<%=usuario%></h1>
           <form method="post" action="Sesiones">
       <input type="submit" value="Cerrar Sesion">
       </div><br><br>
       
    </body>
</html>
