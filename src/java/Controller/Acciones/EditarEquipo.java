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
public class EditarEquipo extends Controller.Controller{
    @Override
    public void process() {
        if(request.getParameter("option").equals("Eliminar")){
            try {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
                Statement st = con.createStatement();
                st.executeUpdate("delete from ADMIN1.EQUIPO where IDEQUIPO="+request.getParameter("IDEQUIPO"));
                updateEquipos();
            } catch (SQLException | ServletException | IOException ex) {
            }
        }else{
            try {
                request.setAttribute("IDQEQUIPO", request.getParameter("IDQEQUIPO"));
                request.setAttribute("NOMBRE", request.getParameter("NOMBRE"));
                request.setAttribute("DNIPRIMERENTRENADOR", request.getParameter("DNIPRIMERENTRENADOR"));
                request.setAttribute("DNISEGUNDOENTRENADOR", request.getParameter("DNISEGUNDOENTRENADOR"));
                request.setAttribute("DNIDELEGADO", request.getParameter("DNIDELEGADO"));
                request.setAttribute("CATEGORIA", request.getParameter("CATEGORIA"));
                forward("/EditarEquipo.jsp");
            } catch (ServletException | IOException ex) {
            }
        }
        
    }
    public void updateEquipos() throws ServletException, IOException{
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
