<%-- 
    Document   : registrarUsuario
    Created on : 10-may-2021, 9:00:45
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
    </head>
    <body>
    <center>
        <h1>Registrar Usuario</h1>
        <form method="POST" action="Usuario">
            <table>
                <tr>
                <label for="usu">Usuaurio</label><br>
                <input type="text" name="txtUsuario" placeholder="Usuario" id="usu"  ><br><br>
                <label for="pass">Contraseña</label><br>
                <input type="password" name="txtPassword" placeholder="Contraseña" id="pass" ><br><br>
                </tr>
            </table>
            <button>Regsitrarse</button>
            <input type="hidden" value="1" name="opcion">
        </form>
        <div>
            <% if (request.getAttribute("mensajeError") != null) {%>
            <div style="color: red;">
                ${mensajeError}
            </div>
            <%} else {%>
            <div style="color:green;">
                ${mensajeExito}
            </div>
            <%}%>
        </div>
    </center>
</body>
</html>
