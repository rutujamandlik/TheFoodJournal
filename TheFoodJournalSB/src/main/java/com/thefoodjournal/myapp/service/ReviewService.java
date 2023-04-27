package com.thefoodjournal.myapp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thefoodjournal.myapp.dao.ReviewDao;
import com.thefoodjournal.myapp.exception.ReviewException;
import com.thefoodjournal.myapp.pojo.Review;

@Service
public class ReviewService {
	
	@Autowired
	ReviewDao reviewDao;
	
	public void submitReview(Review review) throws ReviewException {
		reviewDao.save(review);
	}
	
	public List<Review> getAllreview(int id){
		List<Review> allreview = reviewDao.findAll();
		List<Review> restrevviewbyId = new ArrayList<>();
		for(Review r : allreview) {
			if(r.getRest_id()==id) {
				restrevviewbyId.add(r);
			}
		}
		return restrevviewbyId;
	}
	
}
