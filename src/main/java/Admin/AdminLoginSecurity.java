package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginSecurity")
public class AdminLoginSecurity extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (isAuthorized(request)) {
            //if User is authorized, can redirect to adminLogin.jsp
            response.sendRedirect("adminLogin.jsp");
        } else {
        	//if not, can redirect to unauthorized.jsp
            response.sendRedirect("unauthorized.jsp");
        }
    }

    private boolean isAuthorized(HttpServletRequest request) {
    	return true;
    }

}
