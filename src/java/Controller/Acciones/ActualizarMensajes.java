/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Acciones;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;

/**
 *
 * @author Adriel
 */
public class ActualizarMensajes extends Controller.Controller {

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            Statement st = con.createStatement();
            String query = "update ADMIN1.MENSAJES SET LEIDO = 1"
                    + " WHERE ID = " + request.getParameter("ID");
            st.executeUpdate(query);
            update();

        } catch (ServletException | IOException | SQLException ex) {
        }
    }
    public void update() throws ServletException, IOException {
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
