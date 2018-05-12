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
public class EditarDelegado extends Controller.Controller {
   @Override
    public void process() {
        if(request.getParameter("option").equals("Eliminar")){
            try {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
                Statement st = con.createStatement();
                st.executeUpdate("delete from ADMIN1.DELEGADO where DNI="+request.getParameter("DNI"));
                update();
            } catch (SQLException ex) {
            }
        }else{
            try {
                request.setAttribute("oldDNI", request.getParameter("DNI"));
                forward("/EditarDelegado.jsp");
            } catch (ServletException | IOException ex) {
            }
        }
        
    }
    public void update() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            PreparedStatement dt = con.prepareStatement("select * from ADMIN1.DIRECTORTECNICO");
            ResultSet directores = dt.executeQuery();
            if (directores.next()) {
                request.setAttribute("directores", directores);
            }

            PreparedStatement ent = con.prepareStatement("select * from ADMIN1.ENTRENADOR");
            ResultSet entrenadores = ent.executeQuery();
            if (entrenadores.next()) {
                request.setAttribute("entrenadores", entrenadores);
            }

            PreparedStatement dl = con.prepareStatement("select * from ADMIN1.DELEGADO");
            ResultSet delegados = dl.executeQuery();
            if (delegados.next()) {
                request.setAttribute("delegados", delegados);
            }
            forward("/AdministrarCuerpoTecnico.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }
    }
}
