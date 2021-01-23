package org.expleo.payPropel.dao;

import org.expleo.payPropel.model.UserSchema;

public interface UserDao {

	
	public boolean registerUser(UserSchema userSchema) throws ClassNotFoundException;
}
