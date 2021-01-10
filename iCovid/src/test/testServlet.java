package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetch data from test
		String age=request.getParameter("age");
		String temp=request.getParameter("temp");
		String drycough=request.getParameter("drycough");
		String breathing=request.getParameter("breathing");
		String smelltaste=(String) request.getParameter("smelltaste");
		String exhausted=(String) request.getParameter("exhausted");
		String question8=(String) request.getParameter("question8");
		String confirmedcase=(String) request.getParameter("confirmedcase");
		String vulnerability=(String) request.getParameter("vulnerability");
		
		//create result's model
		result result =new result(age,temp,drycough,breathing,smelltaste,exhausted,question8,confirmedcase,vulnerability);
		
		HttpSession session=request.getSession();
		session.setAttribute("result", result);
		
		int finalResult=risk.calculateRisk(result);
		System.out.println(finalResult);
		session.setAttribute("finalResult", finalResult);
		
		if(finalResult <= 33) {
			String risk = "low";
			session.setAttribute("risk", risk);
			RequestDispatcher rd=request.getRequestDispatcher("low.jsp");
			rd.forward(request, response);
		}
		else if(finalResult > 33 && finalResult<= 66) {
			String risk = "medium";
			session.setAttribute("risk", risk);
			RequestDispatcher rd=request.getRequestDispatcher("medium.jsp");
			rd.forward(request, response);
		}
		else {
			String risk = "high";
			session.setAttribute("risk", risk);
			RequestDispatcher rd=request.getRequestDispatcher("high.jsp");
			rd.forward(request, response);
		}
	}

}