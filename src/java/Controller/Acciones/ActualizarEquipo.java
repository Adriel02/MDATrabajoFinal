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
public class ActualizarEquipo extends Controller {

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            Statement st = con.createStatement();
            String query = "update ADMIN1.EQUIPO SET IDEQUIPO = " + request.getParameter("IDEQUIPO")
                    + ", NOMBRE = '" + request.getParameter("NOMBRE")
                    + "', DNIPRIMERENTRENADOR = " + request.getParameter("DNIPRIMERENTRENADOR")
                    + ", DNISEGUNDOENTRENADOR = " + request.getParameter("DNISEGUNDOENTRENADOR")
                    + ", DNIDELEGADO = " + request.getParameter("DNIDELEGADO")
                    + ", CATEGORIA = '" + request.getParameter("CATEGORIA")
                    + "' WHERE IDEQUIPO = " + request.getParameter("oldIDEQUIPO");
            System.out.println(query);
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
            forward("/AdministrarEquipos.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
    }
}