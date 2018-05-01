package Controller.Acciones;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;

public class EnviarMensaje extends Controller.Controller{

    @Override
    public void process() {
        
        
        try {
            
            
            System.out.println(request.getParameter("DNI"));
            System.out.println(request.getParameter("textarea"));
            
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/AppDB", "admin1", "admin");
            System.out.println("CONECTA");
            String selectQuery = "select * from ADMIN1.MENSAJES";
            PreparedStatement mensajes = con.prepareStatement(selectQuery);
            ResultSet rs = mensajes.executeQuery();
            System.out.println("RS DEVUELTO");
            int total=0;
            if(rs.next()){
                rs.last();
                total = rs.getRow();
            }
            System.out.println("TOTAL: "+ total);
            System.out.println(" HACE EL SELECT BIEN");
            String query = "insert into ADMIN1.MENSAJES values(" + request.getParameter("DNI") + ","
                        + total + ",'"
                        + request.getParameter("textarea") + "')";
            PreparedStatement a = con.prepareStatement(query);
            a.executeQuery();
            
                forward("/Index.jsp");
        } catch (ServletException | IOException | SQLException ex) {
        }
        
    }
    
}
