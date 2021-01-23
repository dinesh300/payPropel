package org.expleo.payPropel.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.expleo.payPropel.data.LoginData;
import org.expleo.payPropel.data.UserData;
import org.expleo.payPropel.service.LoginService;
import org.expleo.payPropel.service.impl.LoginServiceImpl;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 

		   
		    	LoginData logindata = new LoginData();
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				LoginService loginService = new LoginServiceImpl();
				HttpSession session = request.getSession(true);
				UserData userData = loginService.authenticateUser(username, password, request, response);
				
				if (userData!=null) {
					session.setAttribute("username", username);
					request.setAttribute("username", username);
					session.setAttribute("mobileNumber", userData.getContactNumber());
					request.setAttribute("showOrHide", "none");
					RequestDispatcher dispatcher = request.getRequestDispatcher("launch.jsp");
					dispatcher.forward(request, response);
				}else {
					request.setAttribute("isAuth", "FAILURE");
					request.setAttribute("message", "Please enter valid Credientials");
					request.setAttribute("alertId", "myAlert");
					request.setAttribute("alertType", "alert alert-danger center col-xl-10");
					request.setAttribute("cssAlert", "max-height: 50px;color:red; border-radius:5px");
					request.setAttribute("showOrHide", "block");
					RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
					dispatcher.forward(request, response);
					
				}
		    
		    
		
		
	}

}
