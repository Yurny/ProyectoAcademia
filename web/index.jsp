<%-- 
    Document   : index
    Created on : 10-may-2021, 9:32:21
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
        <title>Iniciar Sesion</title>
    </head>
    <body>
        <div class="contenedor">
            <form method="POST" action="Usuario" class="login">
                <h3 class="text-center">Iniciar sesión</h3>
                <img width="200px"  src="imagenes/logo3.png">
                
                <div class="form-group">
                    <label for="Nombre">Usuaurio</label>
                    <input type="text" class="form-control" name="txtUsuario" id="Nombre" placeholder="Escribe tu usuario">
                </div>
                <div class="form-group">
                    <label for="Pass">Contraseña</label>
                    <input type="password" class="form-control" name="txtPassword" id="Contraseña" placeholder="Escribe tu Contraseña">
                </div>
                <div class="text-center">
                    <button class="btn btn-primary btn-block">Ingresar</button>
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
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
</html>
