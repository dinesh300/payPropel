package org.expleo.payPropel.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserService  {

	public boolean registerUser(HttpServletRequest request, HttpServletResponse response);
}
