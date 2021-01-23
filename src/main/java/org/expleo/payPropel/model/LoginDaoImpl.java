package org.expleo.payPropel.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.expleo.payPropel.data.UserData;
import org.expleo.payPropel.utils.JDBCUtils;


public class LoginDaoImpl {


	
	public UserData validate(String username, String password) throws ClassNotFoundException {

		UserData userData = null;
		try { 
			Connection connection = JDBCUtils.getConnection();
			// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement("select * from users where username = ? and password = ? ");
			
			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			
				while(rs.next()){  
					userData = new UserData();		
					
					userData.setUid(rs.getInt(1));
					userData.setFirstName(rs.getString(2));
					userData.setLastName(rs.getString(3));
					userData.setUsername(rs.getString(4));
					userData.setRole(rs.getString(6));
					userData.setEmailId(rs.getString(7));
					userData.setContactNumber(rs.getString(8));
					
					System.out.println("Result set :"+rs.getInt(1)+" "+rs.getString(2)+ " " +rs.getString(3)+" "+rs.getString(4)+" " +rs.getString(5)+" "+rs.getString(6)+" " +rs.getString(7)+" "+rs.getString(8)+" " +rs.getString(9));  
					} 
			
			
		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return userData;
	}
	
	

	
	
	
}
