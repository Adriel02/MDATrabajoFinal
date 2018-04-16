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
 * @author nauzetaduen
 */
public class ActualizarJugador extends Controller {

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            Statement st = con.createStatement();
            String query = "update ADMIN1.JUGADOR SET DNI = " + request.getParameter("DNI")
                    + ", NOMBRE = '" + request.getParameter("NOMBRE")
                    + "', APELLIDO = '" + request.getParameter("APELLIDO")
                    + "', IDEQUIPO = " + request.getParameter("IDEQUIPO")
                    + " WHERE DNI = " + request.getParameter("oldDNI");
            System.out.println(query);
            st.executeUpdate(query);
            updateJugadores();

        } catch (ServletException | IOException | SQLException ex) {
        }
    }

    public void updateJugadores() throws ServletException, IOException {
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
