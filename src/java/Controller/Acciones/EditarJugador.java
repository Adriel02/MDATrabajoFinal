/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Acciones;

import Controller.Controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;

/**
 *
 * @author usuario
 */
public class EditarJugador extends Controller{

    @Override
    public void process() {
        if(request.getParameter("option").equals("Eliminar")){
            try {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
                Statement st = con.createStatement();
                st.executeUpdate("delete from ADMIN1.JUGADOR where DNI="+request.getParameter("DNI"));
                updateJugadores();
            } catch (SQLException | ServletException | IOException ex) {
            }
        }else{
            try {
                //TENEMOS QUE EDITAR AKI
                request.setAttribute("oldDNI", request.getParameter("DNI"));
                forward("/EditarJugador.jsp");
            } catch (ServletException | IOException ex) {
            }
        }
        
    }
    public void updateJugadores() throws ServletException, IOException{
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            PreparedStatement ps = con.prepareStatement("select * from ADMIN1.JUGADOR");
            ResultSet noRs = ps.executeQuery();
            request.setAttribute("noRs", noRs);
            forward("/AdministrarJugadores.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
    }
}
