package com.thefoodjournal.myapp.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import com.thefoodjournal.myapp.dao.DAO;
import com.thefoodjournal.myapp.exception.RestaurantPicsException;
import com.thefoodjournal.myapp.exception.ReviewException;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.pojo.RestaurantPics;
import com.thefoodjournal.myapp.pojo.Review;

@Component
public class RestaurantPicDao extends DAO {

	public RestaurantPicDao() {
    }

    public void save(RestaurantPics restpics)
            throws RestaurantPicsException {
        try {
            begin();
            getSession().save(restpics);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new RestaurantPicsException("Could not save restpics " + restpics.getRest_id(), e);
        }
    }
    
    public List<RestaurantPics> findAll() {
		Query query = getSession().createQuery("FROM RestaurantPics");
		List<RestaurantPics> list = query.list();
		return list;
    }
}
