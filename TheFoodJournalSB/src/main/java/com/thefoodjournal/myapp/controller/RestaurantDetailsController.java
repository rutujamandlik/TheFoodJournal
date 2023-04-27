package com.thefoodjournal.myapp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.thefoodjournal.myapp.exception.RestaurantException;
import com.thefoodjournal.myapp.exception.RestaurantPicsException;
import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.pojo.RestaurantPics;
import com.thefoodjournal.myapp.pojo.Review;
import com.thefoodjournal.myapp.service.ProfileService;
import com.thefoodjournal.myapp.service.RestaurantPicService;
import com.thefoodjournal.myapp.service.RestaurantService;
import com.thefoodjournal.myapp.service.ReviewService;
import com.thefoodjournal.myapp.util.FileUploadUtil;

@Controller
public class RestaurantDetailsController {
	
	@Autowired
	RestaurantService restservice;
	
	@Autowired
	ReviewService reviewservice; 
	
	@Autowired
	RestaurantPicService restPicservice;
	
	@Autowired
	ProfileService profileservice;
	
	@PostMapping(value = "/display-restaurant/customer")
	public ModelAndView getrestById(@RequestParam int rest_id,@RequestParam String username) throws RestaurantException {
		
		ModelAndView model;
		Restaurant restaurant = restservice.getRestDetails(rest_id);
		List<Review> restreview = reviewservice.getAllreview(rest_id);
		List<RestaurantPics> restpics = restPicservice.getRestaurantPics(rest_id);
		RestaurantPics pics = new RestaurantPics();

		model = new ModelAndView("customer-restview");
		model.addObject("reviews",restreview);
		model.addObject("rest",restaurant);
		model.addObject("username",username);
		model.addObject("restpics",restpics);
		
		return model;
	}
	
	@PostMapping(value = "/display-restaurant")
	public ModelAndView getrestById(@RequestParam int rest_id) throws RestaurantException {
		
		ModelAndView model;
		Restaurant restaurant = restservice.getRestDetails(rest_id);
		List<Review> restreview = reviewservice.getAllreview(rest_id);
		List<RestaurantPics> restpics = restPicservice.getRestaurantPics(rest_id);
		RestaurantPics pics = new RestaurantPics();

		model = new ModelAndView("general-restview");
		model.addObject("reviews",restreview);
		model.addObject("rest",restaurant);
		model.addObject("restpics",restpics);
		return model;
	}
	
	@PostMapping("/restaurants/save")
	public ModelAndView saveRestPic(@RequestParam int rest_id,@RequestParam String username,
			@RequestParam("image") MultipartFile multipartFile) throws IOException, RestaurantPicsException, RestaurantException {
		System.out.println("Here");
		System.out.println("rest_id "+rest_id);
		
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String dbfilepath = "src/main/resources/static/img/"+rest_id+"/"+fileName;
		String filepath = "src/main/resources/static/img/"+rest_id;
//		String filepath = "/Users/rutuja/Desktop/ImageDirectory/"+rest_id;
		System.out.println("filepath "+dbfilepath);
		
		RestaurantPics restpic = new RestaurantPics();
		restpic.setFilepath(fileName);
		restpic.setRest_id(rest_id);
		Random rand = new Random();
		restpic.setPic_id(rand.nextInt(1000000));
		
		System.out.println("restpicObj "+restpic.toString());
		
		restPicservice.savepicinfDb(restpic);
		
		FileUploadUtil.saveFile(filepath, fileName, multipartFile);
		
		
		ModelAndView model;
		Restaurant restaurant = restservice.getRestDetails(rest_id);
		List<Review> restreview = reviewservice.getAllreview(rest_id);
		
		List<RestaurantPics> restpics = restPicservice.getRestaurantPics(rest_id);
		System.out.println("restpics "+restpics);
		RestaurantPics pics = new RestaurantPics();
		model = new ModelAndView("customer-restview");
		model.addObject("reviews",restreview);
		model.addObject("rest",restaurant);
		model.addObject("username",username);
		model.addObject("restpics",restpics);
		return model;
		
	}
	
	@GetMapping("/update-restaurant")
	public ModelAndView displayUpdateRestdetails(@RequestParam int rest_id) throws RestaurantException {
		
		Restaurant rest = restservice.getRestDetails(rest_id);
		ModelAndView model;
		model = new ModelAndView("update-restaurant-form");
		model.addObject("rest", rest);
		return model;
	}
	@PostMapping("/save-updated-restaurant")
	public ModelAndView updateRestaurantDetails(@RequestParam int rest_id,HttpServletRequest request,
            HttpServletResponse response) throws Exception{
		
		String rest_name = request.getParameter("rest_name");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		int contact_no = Integer.parseInt(request.getParameter("contact_no"));
		String email = request.getParameter("email");
		String owner_name = request.getParameter("owner_name");
		String username = request.getParameter("username");
		String status = request.getParameter("status");
		System.out.println("username "+username);
		System.out.println("status "+status);
		
		Restaurant restaurant = new Restaurant();
		restaurant.setRest_id(rest_id);
		restaurant.setRest_name(rest_name);
		restaurant.setDescription(description);
		restaurant.setCategory(category);
		restaurant.setAddress(address);
		restaurant.setCity(city);
		restaurant.setContact_no(contact_no);
		restaurant.setEmail(email);
		restaurant.setOwner_name(owner_name);
		restaurant.setUsername(username);
		restaurant.setStatus(status);
		
		restservice.updaterestaurant(restaurant);
		System.out.println("** User Has been Updated");
		ModelAndView model;
		Restaurant restdetails =restservice.getRestDetails(rest_id);
		List<RestaurantPics> restpics = restPicservice.getRestaurantPics(rest_id);
		model = new ModelAndView("restaurant-details");
		model.addObject("restdetails",restdetails);
		model.addObject("restpics",restpics);
		return model;
		
	}
	
	@PostMapping("/restaurants-owner/save")
	public ModelAndView saveRestOwnerPic(@RequestParam int rest_id,@RequestParam String username,
			@RequestParam("image") MultipartFile multipartFile) throws IOException, RestaurantPicsException, RestaurantException {
		System.out.println("Here");
		System.out.println("rest_id "+rest_id);
		
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String dbfilepath = "src/main/resources/static/img/"+rest_id+"/"+fileName;
		String filepath = "src/main/resources/static/img/"+rest_id;
		System.out.println("filepath "+dbfilepath);
		
		RestaurantPics restpic = new RestaurantPics();
		restpic.setFilepath(fileName);
		restpic.setRest_id(rest_id);
		Random rand = new Random();
		restpic.setPic_id(rand.nextInt(1000000));
		
		//Save pics in Db
		restPicservice.savepicinfDb(restpic);
		
		//Save pics in File system
		FileUploadUtil.saveFile(filepath, fileName, multipartFile);
		
		
		ModelAndView model;
		Restaurant restdetails =restservice.getRestDetails(rest_id);
		List<RestaurantPics> restpics = restPicservice.getRestaurantPics(rest_id);
		model = new ModelAndView("restaurant-details");
		model.addObject("restdetails",restdetails);
		model.addObject("restpics",restpics);
		return model;
		
	}

}
