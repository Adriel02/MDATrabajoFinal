package Controller.Acciones;


import Controller.Controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

public class MostrarJugadores extends Controller{

    @Override
    public void process() {
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
