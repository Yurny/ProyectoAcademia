
package ModeloDAO;

import ModeloVO.UsuarioVO;
import Util.Conexion;
import Util.Crud;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class UsuarioDAO extends Conexion implements Crud {

    // Declarar atributos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    private String usuId = "", usulogin = "", usuPassword = "";

    //Crear y conectarse al VO
    public UsuarioDAO(UsuarioVO usuVO) {
        super();
        try {
            conexion = this.obtenerConexion();
            usuId = usuVO.getUsuId();
            usulogin = usuVO.getUsulogin();
            usuPassword = usuVO.getUsuPassword();
        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            sql = "insert into usuario(USULOGIN,USUPASSWORD) values(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usulogin);
            puente.setString(2, usuPassword);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
       try {
            sql = "update  usuario set USULOGIN=?, USUPASSWORD=? WHERE USUID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usulogin);
            puente.setString(2, usuPassword);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "update  usuario set USUASTATE=? WHERE USUID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usulogin);
            puente.setString(2, usuPassword);
            puente.executeUpdate();
            operacion = true;
        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
            }
        }
        return operacion;
    }
    public boolean iniciarSesion(String usuario, String password){
            
        try{
            
            conexion=this.obtenerConexion();
            sql="SELECT * FROM USUARIO WHERE USULOGIN=? AND USUPASSWORD=?";
           puente = conexion.prepareStatement(sql);
           puente.setString(1, usuario);
           puente.setString(2, password);
           mensajero= puente.executeQuery();
           if(mensajero.next()){
               operacion=true;
           }
        }catch(SQLException e){
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
            }
        }
        return operacion;
    }

}
