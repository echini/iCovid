package map;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.userdao;


public class mapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession();
		//create user database model
		userdao userdb=new userdao();
		
		session.setAttribute("coords", userdb.getCoords());
		//request.setAttribute("coords",userdb.getCoords());
		ArrayList<Float> list= new ArrayList<Float>();
		list= (ArrayList<Float>) userdb.getCoords();
		request.setAttribute("coords",list);
	    System.out.println(list);
		
		RequestDispatcher rd=request.getRequestDispatcher("map.jsp");
		rd.forward(request, response);	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
	}

}