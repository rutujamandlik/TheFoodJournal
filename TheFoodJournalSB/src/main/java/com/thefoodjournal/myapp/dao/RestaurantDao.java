package com.thefoodjournal.myapp.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.pojo.Review;
import com.thefoodjournal.myapp.dao.DAO;
import com.thefoodjournal.myapp.exception.RestaurantException;

@Component
public class RestaurantDao extends DAO {
	
    public RestaurantDao() {
    }

    public void save(Restaurant restaurant)
            throws RestaurantException {
        try {
            begin();
            getSession().save(restaurant);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new RestaurantException("Could not save Restaurant " + restaurant.getRest_name(), e);
        }
    }
    
    public List<Restaurant> findAll() throws RestaurantException{
		Query<Restaurant> query = getSession().createQuery("FROM Restaurant");
		List<Restaurant> list = query.list();
//    	 begin();
//    	Criteria criteria = getSession().createCriteria(Restaurant.class);
//    	List<Restaurant> list = criteria.list();
//    	commit();
		return list;
    }
    
    public void update(Restaurant restaurant)
            throws RestaurantException {
        try {
            begin();
            getSession().merge(restaurant);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new RestaurantException("Could not Update Restaurant " + restaurant.getRest_name(), e);
        }
    }
    
    
    public void delete(Restaurant restaurant) throws RestaurantException {
        try {
            begin();
            getSession().delete(restaurant);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new RestaurantException("Could not delete the Restaurant", e);
        }
    }
}
