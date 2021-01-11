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
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetch data from login form
		String logname=request.getParameter("name");
		String logemail=request.getParameter("email");
		
		//fetch users coordinates
		String lat=request.getParameter("lat");
		String lng=request.getParameter("lng");
				

				
		//create user database model
		userdao userdb=new userdao();
				
		//create user model
		user user=new user(logname,logemail,lat,lng);
		
		
		 if( userdb.validate(user)){
	        	
			 HttpSession session=request.getSession();
			 session.setAttribute("loguser", user);
			 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			 rd.forward(request, response);
			    

	        }
		 else {
			 
			 RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			 rd.forward(request, response);
		 }
		
		
	}
}