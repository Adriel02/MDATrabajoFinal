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
public class CrearCuerpoTecnico extends Controller.Controller {

    @Override
    public void process() {
        if (request.getParameter("tipo").equals("entrenador")) {
            try {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
                Statement st = con.createStatement();
                String query = "insert into ADMIN1.ENTRENADOR values(" + request.getParameter("DNI") + ",'"
                        + request.getParameter("NOMBRE") + "','"
                        + request.getParameter("APELLIDO") + "',"
                        + request.getParameter("IDEQUIPO") + ",'"
                        + request.getParameter("PASSWORD") + "')";
                st.executeUpdate(query);
                update();
            } catch (ServletException | IOException | SQLException ex) {
            }
        }
        if (request.getParameter("tipo").equals("directortecnico")) {
            try {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
                Statement st = con.createStatement();
                String query = "insert into ADMIN1.DIRECTORTECNICO values(" + request.getParameter("DNI") + ",'"
                        + request.getParameter("NOMBRE") + "','"
                        + request.getParameter("APELLIDO") + "','"
                        + request.getParameter("PASSWORD") + "')";
                st.executeUpdate(query);
                update();
            } catch (ServletException | IOException | SQLException ex) {
            }
        }
        if (request.getParameter("tipo").equals("delegado")) {
            try {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
                Statement st = con.createStatement();
                String query = "insert into ADMIN1.DELEGADO values(" + request.getParameter("DNI") + ",'"
                        + request.getParameter("NOMBRE") + "','"
                        + request.getParameter("APELLIDO") + "',"
                        + request.getParameter("IDEQUIPO") + ")";
                st.executeUpdate(query);
                update();
            } catch (ServletException | IOException | SQLException ex) {
            }
        }

    }

    public void update() throws ServletException, IOException {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            PreparedStatement ps = null;
            ResultSet noRs = null;
            if (request.getParameter("tipo").equals("entrenador")) {
                ps = con.prepareStatement("select * from ADMIN1.ENTRENADOR");
                noRs = ps.executeQuery();
            }
            if (request.getParameter("tipo").equals("directortecnico")) {
                ps = con.prepareStatement("select * from ADMIN1.DIRECTORTECNICO");
                 noRs = ps.executeQuery();
            }
            if (request.getParameter("tipo").equals("delegado")) {
                ps = con.prepareStatement("select * from ADMIN1.DELEGADO");
                noRs = ps.executeQuery();
            }
            request.setAttribute("noRs", noRs);
            forward("/AdministrarCuerpoTecnico.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
    }

}
