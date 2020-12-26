package register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetch user data
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		
		//create user database model
		userdao userdb=new userdao();
		
		//create user model
		user user=new user(name,email);
		
		
		if(userdb.insert(user)) {
			response.sendRedirect("login.jsp");
		}
		else {
			String errorMessage="User available";
			HttpSession regSession=request.getSession();
			regSession.setAttribute("RegError", errorMessage);
			response.sendRedirect("/registration.jsp");
		}
		
		
	}

}