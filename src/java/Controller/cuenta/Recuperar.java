/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.cuenta;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;

/**
 *
 * @author usuario
 */
public class Recuperar extends Controller.Controller{

    @Override
    public void process() {
        
        try {
            forward("/recuperar.jsp");
        } catch (ServletException ex) {
        } catch (IOException ex) {
        }
    }
    
}
