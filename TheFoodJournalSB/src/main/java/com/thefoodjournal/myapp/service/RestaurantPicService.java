package com.thefoodjournal.myapp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thefoodjournal.myapp.dao.RestaurantPicDao;
import com.thefoodjournal.myapp.exception.RestaurantPicsException;
import com.thefoodjournal.myapp.pojo.RestaurantPics;

@Service
public class RestaurantPicService {
	
	@Autowired
	RestaurantPicDao restpicdao;

	public void savepicinfDb(RestaurantPics restpic) throws RestaurantPicsException {
		
		restpicdao.save(restpic);
	}
	
	public List<RestaurantPics> getRestaurantPics(int rest_id){
		
		List<RestaurantPics> restpics = restpicdao.findAll();
		
		List<RestaurantPics> picsById = new ArrayList<>();
		
		for(RestaurantPics rp : restpics) {
			if(rp.getRest_id()==rest_id) {
				picsById.add(rp);;
			}
		}
		
		System.out.println("picsById "+picsById);
		return picsById;
	}

}
