package org.expleo.payPropel.model;

import java.time.LocalDate;


/**
 * Todo.java
 * This is a model class represents a UserDetail entity
 * @author 
 *
 */
public class UserDetailSchema {

	private Long id;
	private String title;
	private String username;
	private String description;
	private LocalDate targetDate;
	private boolean status;
	
	
	private String FName;
	private String LName;
	private String emailId;
	private String role;
	private String contactNumber;
	
	protected UserDetailSchema() {
		
	}
	
	public UserDetailSchema(long id, String title, String username, String description, LocalDate targetDate, boolean isDone) {
		super();
		this.id = id;
		this.title = title;
		this.username = username;
		this.description = description;
		this.targetDate = targetDate;
		this.status = isDone;
	}
	public UserDetailSchema(long id, String FName, String LName, String emaiId, String contactNumner, String role) {
		super();
		this.id = id;
		this.FName = FName;
		this.LName = LName;
		this.emailId = emaiId;
		this.contactNumber = contactNumner;
		this.role = role;
	}

	public UserDetailSchema(String title, String username, String description, LocalDate targetDate, boolean isDone) {
		super();
		this.title = title;
		this.username = username;
		this.description = description;
		this.targetDate = targetDate;
		this.status = isDone;
	}
	public UserDetailSchema(String title, String username, String description, LocalDate targetDate, boolean isDone,String emailId,String contactNumber,String role) {
		super();
		this.title = title;
		this.username = username;
		this.description = description;
		this.targetDate = targetDate;
		this.status = isDone;
		
		this.emailId = emailId;
		this.contactNumber = contactNumber;
		this.role = role;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}

	public boolean getStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public String getFName() {
		return FName;
	}

	public void setFName(String fname) {
		this.FName = role;
	}
	
	public String getLName() {
		return LName;
	}

	public void setLName(String lname) {
		this.LName = role;
	}
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserDetailSchema other = (UserDetailSchema) obj;
		if (id != other.id)
			return false;
		return true;
	}
}
