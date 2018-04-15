/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Model;

import java.sql.Date;

/**
 *
 * @author Adriel
 */
public class Usuario {
    private final String nombre;
    private final Date fechaLogin;

    public Usuario(String nombre, Date fechaLogin) {
        this.nombre = nombre;
        this.fechaLogin = fechaLogin;
    }
    

    public Date getFechaLogin() {
        return fechaLogin;
    }

    public String getNombre() {
        return nombre;
    }
   
}
