package com.thefoodjournal.myapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.thefoodjournal.myapp.pojo.Profile;
import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.service.ProfileService;
import com.thefoodjournal.myapp.service.RestaurantService;

@Controller
public class ProfileController {
	
	@Autowired
	ProfileService proService;
	
	@Autowired
	RestaurantService restservice;
	
	
	@PostMapping(value = "/create-profile")
	public ModelAndView createProfile(HttpServletRequest request,
            HttpServletResponse response) throws Exception{
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String fullname = request.getParameter("fullname");
		String role = request.getParameter("role");
		
		Profile profile = new Profile();
		profile.setUsername(username);
		profile.setPassword(password);
		profile.setFullname(fullname);
		profile.setRole(role);
		
		proService.saveProfileDetails(profile);
		String jspPage;
		
		if(role.equalsIgnoreCase("Rest_Owner")) {
			jspPage="restaurant-form";
			ModelAndView model = new ModelAndView("restaurant-form");;
			model.addObject("prevUsername",username);
			model.addObject("prevFullname",fullname);
			return model;
			
		}else if(role.equalsIgnoreCase("Customer")) {

			List<Restaurant> restList = restservice.getRestDetails();
			ModelAndView model = new ModelAndView("homepage-customer");;
			model.addObject("restList",restList);
			model.addObject("username",username);
			return model;
		}else {
			jspPage="homepage";
		}
		
		return new ModelAndView(jspPage);
	}

}
