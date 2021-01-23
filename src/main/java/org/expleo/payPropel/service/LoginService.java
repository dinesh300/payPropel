package org.expleo.payPropel.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.expleo.payPropel.data.UserData;


public interface LoginService  {

	
	public UserData authenticateUser(String username, String password, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	

	
}
