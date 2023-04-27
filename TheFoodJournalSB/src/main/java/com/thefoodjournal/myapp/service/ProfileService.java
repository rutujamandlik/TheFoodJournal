package com.thefoodjournal.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thefoodjournal.myapp.dao.ProfileDao;
import com.thefoodjournal.myapp.exception.ProfileException;
import com.thefoodjournal.myapp.pojo.Profile;

@Service
public class ProfileService {
	
	@Autowired
	ProfileDao profileDao;

	public void saveProfileDetails(Profile profile) throws ProfileException {
		
		profileDao.save(profile);
		
	}
	
	public Profile getrestProfile(String username) {
		List<Profile> allprofiles = profileDao.findAll();
		
		for(Profile p : allprofiles) {
			if(p.getUsername().equalsIgnoreCase(username)) {
				System.out.println("Found profile "+p.getUsername());
				return p;
			}
		}
		return null;
	}

	public boolean validateUser(String username, String password) {
		
		List<Profile> allprofiles = profileDao.findAll();
		
		for(Profile profile : allprofiles) {
			if(profile.getUsername().equalsIgnoreCase(username)) {
				return true;
			}
		}
		
		return false;
	}

}
