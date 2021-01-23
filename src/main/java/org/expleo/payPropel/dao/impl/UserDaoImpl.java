package org.expleo.payPropel.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.expleo.payPropel.dao.UserDao;
import org.expleo.payPropel.model.UserSchema;
import org.expleo.payPropel.utils.JDBCUtils;



public class UserDaoImpl implements UserDao {

	
	public boolean registerUser(UserSchema employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO users"
				+ "  (first_name, last_name, username, password,EMAIL_ID,CONTACT_NUMBER,ROLE,ACTIVE) VALUES "
				+ " (?, ?, ?, ?,?,?,'General','Y');";

		boolean flag = false;
		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getUsername());
			preparedStatement.setString(4, employee.getPassword());
			
			preparedStatement.setString(5, employee.getEmailId());
			preparedStatement.setString(6, employee.getContactNumber());
			//preparedStatement.setString(7, employee.getRole());
			
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

			if(result != 0) {
				flag = true;
			}
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return flag;
	}

}
