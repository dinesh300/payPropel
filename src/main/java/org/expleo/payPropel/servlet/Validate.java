package org.expleo.payPropel.servlet;


import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Validate
 */
@MultipartConfig
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 private static final String SAVE_DIR = "uploadFiles";
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validate() {
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
		// TODO Auto-generated method stub
		
		
		// gets absolute path of the web application
        String appPath = request.getServletContext().getRealPath("");
        // constructs path of the directory to save uploaded file
        String savePath = appPath + File.separator + SAVE_DIR;
         
        // creates the save directory if it does not exists
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
         
        for (Part part : request.getParts()) {
            String ext = extractFileName(part);
            System.out.println("Ext :" +ext);
            if(ext.equals("")) {
            	request.setAttribute("isAuth", "FAILURE");
				request.setAttribute("message", "Please Upload valid File");
				request.setAttribute("alertId", "myAlert");
				request.setAttribute("alertType", "alert alert-danger center col-xl-10");
				request.setAttribute("cssAlert", "max-height: 50px;color:red; border-radius:5px");
				request.setAttribute("showOrHide", "block");
            }else {
            	  if(ext.equals("xml")) {
                  	request.setAttribute("message", "File validated Successfully!");
          			request.setAttribute("status", "SUCCESS");
          			request.setAttribute("isAuth", "SUCCESS");
          			request.setAttribute("alertType", "alert alert-success center");
          			request.setAttribute("cssAlert", "max-height: 50px;color:green; border-radius:5px");
          			request.setAttribute("alertId", "myAlert");
          			request.setAttribute("showOrHide", "block");
                  }else {
                  	request.setAttribute("isAuth", "FAILURE");
      				request.setAttribute("message", "File validation failed please check Error log.");
      				request.setAttribute("alertId", "myAlert");
      				request.setAttribute("alertType", "alert alert-danger center col-xl-10");
      				request.setAttribute("cssAlert", "max-height: 50px;color:red; border-radius:5px");
      				request.setAttribute("showOrHide", "block");
      				
                  }
            }
          
            RequestDispatcher dispatcher = request.getRequestDispatcher("validateISO.jsp");
			dispatcher.forward(request, response);
        }
        
    }
    
	

/**
 * Extracts file name from HTTP header content-disposition
 */
private String extractFileName(Part part) {
    String contentDisp = part.getHeader("content-disposition");
    String[] items = contentDisp.split(";");
    for (String s : items) {
    	boolean s23 =s.trim().startsWith("filename");
        if (s.trim().startsWith("filename")) {
        	
        	String s1 = s.substring(s.indexOf("=") + 2, s.length()-1);
        	System.out.println("S1 :" +s1);
        	if(s1.equals("")) {
        		return "";
        	}
        	final String extensionRemoved = s1.split("\\.")[1];
            return extensionRemoved;
        }
    }
    return "";
}

}
