package com.thefoodjournal.myapp.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "Restaurant")
@Table(name = "Restaurant")
public class Restaurant {

	@Id
	@Column(name="rest_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int rest_id;
	
	private String rest_name;
	
	private String description;
	
	private String category;
	
	private String address;
	
	private String city;
	
	private long contact_no;
	
	private String email;
	
	private String owner_name;
	
	private String username;
	
	private String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRest_id() {
		return rest_id;
	}
	public void setRest_id(int rest_id) {
		this.rest_id = rest_id;
	}
	public String getRest_name() {
		return rest_name;
	}
	public void setRest_name(String rest_name) {
		this.rest_name = rest_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public long getContact_no() {
		return contact_no;
	}
	public void setContact_no(long contact_no) {
		this.contact_no = contact_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOwner_name() {
		return owner_name;
	}
	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Restaurant [rest_id=" + rest_id + ", rest_name=" + rest_name + ", description=" + description
				+ ", category=" + category + ", address=" + address + ", city=" + city + ", contact_no=" + contact_no
				+ ", email=" + email + ", owner_name=" + owner_name + ", username=" + username + ", status=" + status
				+ "]";
	}

	
	
	

}
