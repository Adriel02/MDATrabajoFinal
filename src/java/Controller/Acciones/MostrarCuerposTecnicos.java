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
import javax.servlet.ServletException;


public class MostrarCuerposTecnicos extends Controller{

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            PreparedStatement ps = con.prepareStatement("select * from ADMIN1.DIRECTORTECNICO");
            System.out.println(ps);
            ResultSet noRs = ps.executeQuery();
            request.setAttribute("noRs", noRs);
            forward("/AdministrarCuerpoTecnico.jsp");
        } catch (SQLException | ServletException | IOException ex) {
        }

    }

}
