package com.thefoodjournal.myapp.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.thefoodjournal.myapp.dao.RestaurantDao;
import com.thefoodjournal.myapp.exception.RestaurantException;
import com.thefoodjournal.myapp.pojo.Restaurant;

@Component
public class RestaurantService {
	
	@Autowired
	RestaurantDao restDao;
	

	public void saveRestAppDetails(Restaurant restaurant) throws RestaurantException {
		
		restDao.save(restaurant);
		
	}
	
	
	public List<Restaurant> getApprovedRestDetails() throws RestaurantException {
		
		
		List<Restaurant> allRestauants = restDao.findAll();
		
		List<Restaurant> appRestauants = new ArrayList<Restaurant>();
		
		for(Restaurant r : allRestauants) {
			if(r.getStatus().equalsIgnoreCase("Approved")) {
				appRestauants.add(r);
			}
		}
		
		return appRestauants;
		
	}
	
	
	public List<Restaurant> getRestDetails() throws RestaurantException {
		
		return restDao.findAll();
		
	}
	
	public List<Restaurant> getUpdateStatus(Restaurant restaurant) throws RestaurantException {
		
		return restDao.findAll();
		
	}


	public void getdeleteEmployeeById(int rest_id) throws RestaurantException {
		
		List<Restaurant> allrestaurant = restDao.findAll();
		
		for(Restaurant r: allrestaurant) {
			if(r.getRest_id()==rest_id) {
				
				restDao.delete(r);
			}
		}
		
		
	}


	public void getrejectEmployeeById(int rest_id) throws RestaurantException {
		
	
		List<Restaurant> allrestaurant = restDao.findAll();
		
		for(Restaurant r :allrestaurant ) {
			if(r.getRest_id() == rest_id) {
				r.setStatus("REJECTED");
				restDao.save(r);
			}
		}
		
		
	}


	public void getapproveEmployeeById(int rest_id) throws RestaurantException {
		
		List<Restaurant> allrestaurant = restDao.findAll();
		
		for(Restaurant r: allrestaurant) {
			if(r.getRest_id() == rest_id) {
				r.setStatus("Approved");
				restDao.save(r);
			}
		}
		
	}
	
	
	public void sendEmailToAdmin(String rest_name) throws AddressException, MessagingException, IOException {
		   Properties props = new Properties();
		   props.put("mail.smtp.auth", "true");
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.host", "smtp.gmail.com");
		   props.put("mail.smtp.port", "587");
		   
		   Session session = Session.getInstance(props, new javax.mail.Authenticator() {
		      protected PasswordAuthentication getPasswordAuthentication() {
		         return new PasswordAuthentication("mandlikrutuja11@gmail.com", "#Confusedhogger11");
		      }
		   });
		   Message msg = new MimeMessage(session);
		   msg.setFrom(new InternetAddress("mandlikrutuja11@gmail.com", false));

		   msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("rutuja11.jobs@gmail.com"));
		   msg.setSubject("Approval Request: New Restaurant Account");
		   msg.setContent("Hello Admin, New restaurant ("+rest_name+") has been created. Kindly Approve or Reject the restaurant", "text/html");
		   msg.setSentDate(new Date());

		   MimeBodyPart messageBodyPart = new MimeBodyPart();
		   messageBodyPart.setContent("Tutorials point email", "text/html");

		   Transport.send(msg);   
		}
	
	public Restaurant getRestDetails(int rest_id) throws RestaurantException {
		
		List<Restaurant> allrestaurant = restDao.findAll();
		for(Restaurant r: allrestaurant) {
			if(r.getRest_id() == rest_id) {
				
				return r;
			}
			
		}
		return null;
		
		
	}


	public Restaurant getRestDetailsByUsername(String username) throws RestaurantException {
		
		List<Restaurant> allrestaurant = restDao.findAll();
		for(Restaurant r: allrestaurant) {
			if(r.getUsername().equalsIgnoreCase(username)) {
				
				return r;
			}
			
		}
		return null;
	}


	public void updaterestaurant(Restaurant restaurant) throws RestaurantException {
		restDao.update(restaurant);
	}
	
}
