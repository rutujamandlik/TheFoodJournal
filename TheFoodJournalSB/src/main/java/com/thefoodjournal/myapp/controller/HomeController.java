package com.thefoodjournal.myapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thefoodjournal.myapp.exception.RestaurantException;
import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.pojo.RestaurantPics;
import com.thefoodjournal.myapp.service.RestaurantPicService;
import com.thefoodjournal.myapp.service.RestaurantService;

@Controller
public class HomeController {
	
	@Autowired
	RestaurantService restservice;
	
	@Autowired
	RestaurantPicService restPicservice;
	
	@GetMapping(value = "/homepage")
	public ModelAndView gethomepage() throws RestaurantException {
		
		List<Restaurant> restList = restservice.getApprovedRestDetails();

		ModelAndView model = new ModelAndView("homepage");;
		model.addObject("restList",restList);
		
		return model;
	}
	
	@GetMapping(value = "/homepage-customer")
	public ModelAndView getCustHomepage(@RequestParam String username) throws RestaurantException {
		
		List<Restaurant> restList = restservice.getApprovedRestDetails();

		ModelAndView model = new ModelAndView("homepage-customer");;
		model.addObject("restList",restList);
		model.addObject("username",username);

		return model;
	}
	
	@GetMapping(value = "/aboutme")
	public ModelAndView getAboutMe(){
		

		ModelAndView model = new ModelAndView("about");

		return model;
	}


}
