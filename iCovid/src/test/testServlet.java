package test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.user;
import register.userdao;


public class testServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//fetch data from test
		String age=(String) request.getParameter("age");
		String temp=(String) request.getParameter("temp");
		String drycough=(String) request.getParameter("drycough");
		String breathing=(String) request.getParameter("breathing");
		String smelltaste=(String) request.getParameter("smelltaste");
		String exhausted=(String) request.getParameter("exhausted");
		String question8=(String) request.getParameter("question8");
		String confirmedcase=(String) request.getParameter("confirmedcase");
		String vulnerability=(String) request.getParameter("vulnerability");
		
		//create result's model
		result res =new result(age,temp,drycough,breathing,smelltaste,exhausted,question8,confirmedcase,vulnerability);
		
		HttpSession session=request.getSession();
		session.setAttribute("result", res);
		
		Float finalResult=(float) risk.calculateRisk(res);
		//System.out.println(finalResult);
		//System.out.println(res.age);
		session.setAttribute("finalResult", finalResult);
		user loguser=(user)session.getAttribute("loguser");
		userdao userdb=new userdao();
		userdb.insertRes(finalResult, loguser);
		
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