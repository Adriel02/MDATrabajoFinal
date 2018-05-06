package Controller.Acciones;

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
 * @author usuario
 */
public class EnviarMensaje extends Controller.Controller{

    @Override
    public void process() {
        
        
        try {
            
            
            System.out.println(request.getParameter("DNI"));
            System.out.println(request.getParameter("textarea"));
            
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            String selectQuery = "select * from ADMIN1.MENSAJES";
            PreparedStatement mensajes = con.prepareStatement(selectQuery);
            ResultSet rs = mensajes.executeQuery();

            int i = 0;
            while (rs.next()) {
                i++;
            }
            
            String query = "insert into ADMIN1.MENSAJES values(" + i++ +","+ request.getParameter("DNI") + ",'"
                   
                        + request.getParameter("textarea") + "')";
            System.out.println("QUERY: " + query);
            PreparedStatement a = con.prepareStatement(query);
            a.executeUpdate();
            
                forward("/Index.jsp");
        } catch (ServletException | IOException | SQLException ex) {
        }
        
    }
    
}
