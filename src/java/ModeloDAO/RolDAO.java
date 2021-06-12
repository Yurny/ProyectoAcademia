package ModeloDAO;

import ModeloVO.UsuarioVO;
import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;




public class RolDAO extends Conexion{
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private String sql;
    
    public ArrayList<UsuarioVO> roles (String usuario) {
        
        ArrayList<UsuarioVO> listaRoles = new ArrayList<>();
        
        try {
            conexion = this.obtenerConexion();
            sql = "SELECT usuario.USUID, rol.ROLTIPO FROM usuario INNER JOIN \n" +
"                usuario_rol on usuario.USUID = usuario_rol.USUID INNER JOIN \n" +
"                rol on rol.ROLID= usuario_rol.ROLID WHERE USULOGIN = ? ";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usuario);
            mensajero = puente.executeQuery();
            
            while(mensajero.next()){
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2));
                listaRoles.add(usuVO);
                
            }
            
        } catch (SQLException e) {
        Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return listaRoles;
    }
}
