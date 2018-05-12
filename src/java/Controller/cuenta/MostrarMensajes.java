/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.cuenta;

import Controller.Controller;
import Servlets.FrontServlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;

public class MostrarMensajes extends Controller{

    @Override
    public void process() {
        
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            String selectQuery = "select * from ADMIN1.MENSAJES";
            PreparedStatement mensajes = con.prepareStatement(selectQuery);
            ResultSet rs = mensajes.executeQuery();
            request.setAttribute("mensajes", rs);
            forward("/Mensajes.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
    }
    
    
    
}
