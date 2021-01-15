package register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//fetch user data
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		
		//fetch users coordinates

		    Float lat = Float.parseFloat(request.getParameter("lat"));

		    Float lng = Float.parseFloat(request.getParameter("lng"));
		    
		    Float res=Float.parseFloat("0");

		//create user database model
		userdao userdb=new userdao();
		
		//create user model
		user user=new user(name,email,lat,lng,res);
		
		if(userdb.insert(user)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("regagain.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}