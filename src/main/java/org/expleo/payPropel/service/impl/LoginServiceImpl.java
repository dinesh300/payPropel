package org.expleo.payPropel.service.impl;


import java.io.Console;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.expleo.payPropel.dao.LoginDao;
import org.expleo.payPropel.dao.impl.LoginDaoImpl;
import org.expleo.payPropel.data.UserData;
import org.expleo.payPropel.service.LoginService;



public class LoginServiceImpl implements LoginService {

	
	
	
	
	
	
	public UserData authenticateUser(String username, String password, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		LoginDao loginDao =new LoginDaoImpl();
		UserData userData = null;
		
			userData =new UserData();
			try {
				userData = loginDao.validate(username,password);
				if(userData != null) {
						
				}
				
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
		return userData;
	}
	
	
	


	

}
