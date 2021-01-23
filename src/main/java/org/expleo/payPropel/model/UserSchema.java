package org.expleo.payPropel.model;

import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author RXP
 */
public class UserSchema implements Serializable {
	private static final long serialVersionUID = 1L;
	private String firstName;
	private String lastName;
	private String username;
	private String password;
	
	private String emailId;
	private String role;
	private String contactNumber;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmailId() {
		return emailId;
		
	}
	public String getContactNumber() {
		return contactNumber;
		
	}
	public String getRole() {
		return role;
		
	}

}
