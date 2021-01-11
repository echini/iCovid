package map;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import register.userdao;


public class mapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		//create user database model
		userdao userdb=new userdao();

		
		request.setAttribute("coords",userdb.getCoords());
		RequestDispatcher rd=request.getRequestDispatcher("map.jsp");
		rd.forward(request, response);	
		
	}

}