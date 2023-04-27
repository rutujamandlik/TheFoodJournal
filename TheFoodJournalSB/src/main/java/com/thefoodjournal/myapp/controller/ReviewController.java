package com.thefoodjournal.myapp.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.pojo.RestaurantPics;
import com.thefoodjournal.myapp.pojo.Review;
import com.thefoodjournal.myapp.service.RestaurantService;
import com.thefoodjournal.myapp.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewservice; 
	
	@Autowired
	RestaurantService restservice;

	@PostMapping(value = "/submitReview")
	public ModelAndView submitReview (HttpServletRequest request,
            HttpServletResponse response,@RequestParam int rest_id,@RequestParam String username) throws Exception {
		ModelAndView model;
		Review review = new Review();
		String reviewtext =request.getParameter("review-text");
		System.out.println("reviewtext "+reviewtext);
		int rating;
		if(request.getParameter("rating1")==null) {
			rating=0;
		}else {
			rating =Integer.parseInt(request.getParameter("rating1"));
		}
		Random r = new Random();
		review.setReview_id(r.nextInt(10000));
		review.setUsername(username);
		review.setReview(reviewtext);
		review.setRatings(rating);
		review.setRest_id(rest_id);

		reviewservice.submitReview(review);
		

		Restaurant restaurant = restservice.getRestDetails(rest_id);
		List<Review> restreview = reviewservice.getAllreview(rest_id);
		RestaurantPics pics = new RestaurantPics();
		String restPics=pics.getPhotosImagePath();
		System.out.println("restPics "+restPics);
		model = new ModelAndView("customer-restview");
		model.addObject("reviews",restreview);
		model.addObject("rest",restaurant);
		model.addObject("restPics",restPics);
		model.addObject("username",username);
		return model;

	}
	
}
