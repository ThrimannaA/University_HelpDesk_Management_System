//staff_Login_Servlet_page

package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StaffLogin")
public class StaffLoginn extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	// if security check is successful,staff is authorized, redirect to AdminLoginSecurity
        response.sendRedirect("AdminLoginSecurity");
    }
}
