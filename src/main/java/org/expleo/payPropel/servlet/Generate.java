package org.expleo.payPropel.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Generate
 */
public class Generate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Generate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	 	    request.setAttribute("message", "File Generated Successfully!");
			request.setAttribute("status", "SUCCESS");
			request.setAttribute("isAuth", "SUCCESS");
			request.setAttribute("alertType", "alert alert-success center");
			request.setAttribute("cssAlert", "max-height: 50px;color:green; border-radius:5px");
			request.setAttribute("alertId", "myAlert");
			request.setAttribute("showOrHide", "block");
			
			 RequestDispatcher dispatcher = request.getRequestDispatcher("generateISO.jsp");
			 dispatcher.forward(request, response);
	}

}
