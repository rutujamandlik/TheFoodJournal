package com.thefoodjournal.myapp.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "Review")
@Table(name = "Review")
public class Review {

	public Review() {
		
	}
	
	@Id
	@Column(name="review_id")
	private int review_id;
	

	private int rest_id;
	
	private String username;
	
	private String review;
	
	private int ratings;
	
	
	public int getRest_id() {
		return rest_id;
	}
	public void setRest_id(int rest_id) {
		this.rest_id = rest_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getRatings() {
		return ratings;
	}
	public void setRatings(int ratings) {
		this.ratings = ratings;
	}
	
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	@Override
	public String toString() {
		return "Review [review_id=" + review_id + ", rest_id=" + rest_id + ", username=" + username + ", review="
				+ review + ", ratings=" + ratings + "]";
	}

	
	
	


}
