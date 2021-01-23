package org.expleo.payPropel.service.impl;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.expleo.payPropel.dao.UserDao;
import org.expleo.payPropel.dao.impl.UserDaoImpl;
import org.expleo.payPropel.model.UserSchema;
import org.expleo.payPropel.service.UserService;



public class UserServiceImpl implements UserService {

	
	public boolean registerUser(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		boolean result = false;
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String emailId = request.getParameter("emailId");
		String contactNumber = request.getParameter("contactNumber");
		String role = request.getParameter("role");

		UserSchema userSchema = new UserSchema();
		userSchema.setFirstName(firstName);
		userSchema.setLastName(lastName);
		userSchema.setUsername(username);
		userSchema.setPassword(password);
		
		userSchema.setEmailId(emailId);
		userSchema.setContactNumber("+91"+contactNumber);
		userSchema.setRole(role);
		try {
		UserDao userDao = new UserDaoImpl();
		result = userDao.registerUser(userSchema);
		request.setAttribute("showOrHide", "none");
		if(result) {
			request.setAttribute("message", "User Registered Successfully!");
			request.setAttribute("status", "SUCCESS");
			request.setAttribute("alertType", "alert alert-success center");
			request.setAttribute("cssAlert", "max-height: 50px;background: #3fad3f;color:white");
			request.setAttribute("alertId", "myAlert");
			request.setAttribute("showOrHide", "block");
			
			
			
		}else {
			request.setAttribute("NOTIFICATION", "Internal server error.Try after sometime.");
			request.setAttribute("RESPONSE", "FAILURE");
			request.setAttribute("alertType", "alert alert-danger center");
			
			request.setAttribute("cssAlert", "max-height: 50px;");
			request.setAttribute("alertId", "myAlert");
			
		}
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return result;
	}

}
