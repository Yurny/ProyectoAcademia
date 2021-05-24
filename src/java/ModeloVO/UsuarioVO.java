/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Julian
 */
public class UsuarioVO {
    
    private String usuId, usulogin, usuPassword;
    
    public UsuarioVO(){
    }
    public UsuarioVO(String usuId, String usulogin, String usuPassword) {
        this.usuId = usuId;
        this.usulogin = usulogin;
        this.usuPassword = usuPassword;
    }

    public String getUsuId() {
        return usuId;
    }

    public void setUsuId(String usuId) {
        this.usuId = usuId;
    }

    public String getUsulogin() {
        return usulogin;
    }

    public void setUsulogin(String usulogin) {
        this.usulogin = usulogin;
    }

    public String getUsuPassword() {
        return usuPassword;
    }

    public void setUsuPassword(String usuPassword) {
        this.usuPassword = usuPassword;
    }
        
}
