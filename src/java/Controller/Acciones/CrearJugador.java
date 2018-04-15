package Controller.Acciones;

import Controller.Controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;

public class CrearJugador extends Controller{

    @Override
    public void process() {
        try {
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            Statement st = con.createStatement();
            String query= "insert into ADMIN1.JUGADOR values("+request.getParameter("DNI") +",'"
                                                                +request.getParameter("NOMBRE")+ "','"
                                                                +request.getParameter("APELLIDO")+ "',"
                                                                +request.getParameter("IDEQUIPO")+")";
            st.executeUpdate(query);
            updateJugadores();
        } catch (ServletException | IOException | SQLException ex) {
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
