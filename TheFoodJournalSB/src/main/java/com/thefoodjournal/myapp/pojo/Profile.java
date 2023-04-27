package com.thefoodjournal.myapp.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "Profile")
@Table(name = "Profile")
public class Profile {


	private String fullname;
	
	@Id
	@Column(name = "username")
	private String username;
	
	private String password;
	
	private String role;
	
	
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Profile [fullname=" + fullname + ", username=" + username + ", password=" + password + ", role=" + role
				+ "]";
	}
	
	
}
