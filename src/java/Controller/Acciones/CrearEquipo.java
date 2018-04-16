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
public class CrearEquipo extends Controller.Controller {

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            Statement st = con.createStatement();
            String query = "insert into ADMIN1.EQUIPO values(" + request.getParameter("IDEQUIPO") + ",'"
                    + request.getParameter("NOMBRE") + "',"
                    + request.getParameter("DNIPRIMERENTRENADOR") + ","
                    + request.getParameter("DNISEGUNDOENTRENADOR") + ","
                    + request.getParameter("DNIDELEGADO") + ",'"
                    + request.getParameter("CATEGORIA") + "')";
            st.executeUpdate(query);
            updateEquipos();
        } catch (ServletException | IOException | SQLException ex) {
        }

    }

    public void updateEquipos() throws ServletException, IOException {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            PreparedStatement ps = con.prepareStatement("select * from ADMIN1.EQUIPO");
            ResultSet noRs = ps.executeQuery();
            request.setAttribute("noRs", noRs);
            System.out.println("no he llegado");
            forward("/AdministrarEquipos.jsp");
            System.out.println("he llegado");
        } catch (SQLException | ServletException | IOException ex) {
        }
    }

}
