package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.user;
import register.userdao;


public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetch data from login form
		String logname=request.getParameter("name");
		String logemail=request.getParameter("email");
		
		//create user database model
		userdao userdb=new userdao();
				
		//create user model
		user user=new user(logname,logemail);
		
		 if( userdb.validate(user)){
	        	
			    HttpSession session=request.getSession();
			    session.setAttribute("loguser", user);
			   /* RequestDispatcher rd=request.getRequestDispatcher("test.jsp");
				 rd.forward(request, response);*/
			    response.sendRedirect("test.jsp");
			    

	        }
		 else {
			 
			 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			 rd.forward(request, response);
		 }
		
		
	}
}