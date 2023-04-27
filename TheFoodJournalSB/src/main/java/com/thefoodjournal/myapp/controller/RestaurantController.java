package com.thefoodjournal.myapp.controller;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.thefoodjournal.myapp.exception.RestaurantException;
import com.thefoodjournal.myapp.pojo.Profile;
import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.pojo.RestaurantPics;
import com.thefoodjournal.myapp.pojo.Review;
import com.thefoodjournal.myapp.service.ProfileService;
import com.thefoodjournal.myapp.service.RestaurantPicService;
import com.thefoodjournal.myapp.service.RestaurantService;
import com.thefoodjournal.myapp.service.ReviewService;

@Controller
public class RestaurantController {
	
	@Autowired
	RestaurantService restservice;
	
	@Autowired
	ProfileService profileservice;
	
	@Autowired
	RestaurantPicService restPicservice;
	
	@Autowired
	ReviewService reviewservice;

	@PostMapping(value = "/addRestAppDetails")
	public ModelAndView addRestAppDetails(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
		Restaurant restaurant = new Restaurant();
		
		
		String rest_name = request.getParameter("rest_name");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		int contact_no = Integer.parseInt(request.getParameter("contact_no"));
		String email = request.getParameter("email");
		String owner_name = request.getParameter("owner_name");
		String username = request.getParameter("username");
		
//		Random rand = new Random();
//		int rest_id = rand.nextInt(1000);
//		
//		restaurant.setRest_id(rest_id);
		restaurant.setRest_name(rest_name);
		restaurant.setDescription(description);
		restaurant.setCategory(category);
		restaurant.setAddress(address);
		restaurant.setCity(city);
		restaurant.setContact_no(contact_no);
		restaurant.setEmail(email);
		restaurant.setOwner_name(owner_name);
		restaurant.setUsername(username);
		restaurant.setStatus("PENDING");
		
		restservice.saveRestAppDetails(restaurant);
		restservice.sendEmailToAdmin(rest_name);
		
		ModelAndView model;
		List<Restaurant> restList = restservice.getApprovedRestDetails();
		
		model = new ModelAndView("homepage");;
		model.addObject("restList",restList);
		
		return model;
	
	}
	
	@GetMapping(value = "/restaurant-form.htm")
	public ModelAndView getRest() {
		
		return new ModelAndView("restaurant-form");
	}
	
	@GetMapping(value = "/restaurant-signup.htm")
	public ModelAndView getRestSignup() {	
		
		return new ModelAndView("restaurant-signup");
	}
	
	@GetMapping(value = "/customer-signup")
	public ModelAndView geCustSignup() {	
		
		return new ModelAndView("customer-signup");
	}
	
	@PostMapping(value = "/do-login")
	public ModelAndView getRestDetails(@RequestParam String username,@RequestParam String password) throws RestaurantException {
		
		ModelAndView model;
		
		boolean isValid = profileservice.validateUser(username,password);
		
		if(!isValid) {
			model = new ModelAndView("error-page");
			model.addObject("errorMsg","User Does Not Exist. Please Try Again");
			return model;
		}
		
		if(username.equalsIgnoreCase("ADMIN")&& password.equalsIgnoreCase("ADMIN")) {
			
			List<Restaurant> restlist = restservice.getRestDetails();
			model = new ModelAndView("admin-dashboard");
			model.addObject("rest",restlist);
			return model;

			
		}else {
			Profile profile = profileservice.getrestProfile(username);
			
			if(profile.getRole().equalsIgnoreCase("Rest_Owner")) {
				
				Restaurant restdetails = restservice.getRestDetailsByUsername(username);
				List<RestaurantPics> restpics = restPicservice.getRestaurantPics(restdetails.getRest_id());
				List<Review> restreview = reviewservice.getAllreview(restdetails.getRest_id());
				
				
				model = new ModelAndView("restaurant-details");
				model.addObject("restdetails",restdetails);
				model.addObject("restpics",restpics);
				model.addObject("restreview",restreview);
				return model;
			}else if(profile.getRole().equalsIgnoreCase("Customer")) {
				
				List<Restaurant> restList = restservice.getApprovedRestDetails();
				model = new ModelAndView("homepage-customer");;
				model.addObject("restList",restList);
				model.addObject("username",username);
				return model;
			}
			
			
		}
		
		
		return new ModelAndView("homepage");
	}
	
	@GetMapping(value = "/admin-login")
	public ModelAndView getAdminLoginPage() {
		
		return new ModelAndView("admin-login");
	}
	@GetMapping(value = "/admin-dashboard")
	public ModelAndView getAdminDashboard() {
		
		return new ModelAndView("admin-dashboard");
	}
	
	@GetMapping(value = "/delete-restaurant")
	public ModelAndView getdeleteEmployeeById(@RequestParam int rest_id) throws RestaurantException
	{

		ModelAndView model;
		
		restservice.getdeleteEmployeeById(rest_id);
		
		List<Restaurant> restlist = restservice.getRestDetails();
		model = new ModelAndView("admin-dashboard");
		model.addObject("rest",restlist);
		
		return model;
		
	}
	
	@GetMapping(value = "/reject-restaurant")
	public ModelAndView getrejectEmployeeById(@RequestParam int rest_id) throws RestaurantException
	{

		ModelAndView model;
		
		restservice.getrejectEmployeeById(rest_id);
		
		List<Restaurant> restlist = restservice.getRestDetails();
		model = new ModelAndView("admin-dashboard");
		model.addObject("rest",restlist);
		
		return model;
		
	}
	
	@GetMapping(value = "/approve-restaurant")
	public ModelAndView getapproveEmployeeById(@RequestParam int rest_id) throws RestaurantException
	{

		ModelAndView model;
		
		restservice.getapproveEmployeeById(rest_id);
		
		List<Restaurant> restlist = restservice.getRestDetails();
		model = new ModelAndView("admin-dashboard");
		model.addObject("rest",restlist);
		
		return model;
		
	}

}
	
	
	
	
	
	
	
	
