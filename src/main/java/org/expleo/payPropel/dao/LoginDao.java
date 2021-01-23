package org.expleo.payPropel.dao;

import org.expleo.payPropel.data.UserData;

public interface LoginDao {

	public UserData validate(String username, String password) throws ClassNotFoundException ;
	
}
