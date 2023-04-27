package com.thefoodjournal.myapp.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.thefoodjournal.myapp.exception.ProfileException;
import com.thefoodjournal.myapp.exception.RestaurantException;
import com.thefoodjournal.myapp.pojo.Profile;
import com.thefoodjournal.myapp.pojo.Restaurant;
import com.thefoodjournal.myapp.dao.DAO;

@Component
public class ProfileDao extends DAO{

	 public ProfileDao() {
	    }

	    public void save(Profile profile)
	            throws ProfileException {
	        try {
	            begin();
	            getSession().save(profile);
	            commit();
	        } catch (HibernateException e) {
	            rollback();
	            throw new ProfileException("Could not save profile " + profile.getUsername(), e);
	        }
	    }
	    
	    public List<Profile> findAll() {
			Query query = getSession().createQuery("FROM Profile");
			List<Profile> list = query.list();
			return list;
	    }
	    
	    
	    public void delete(Profile profile) throws ProfileException {
	        try {
	            begin();
	            getSession().delete(profile);
	            commit();
	        } catch (HibernateException e) {
	            rollback();
	            throw new ProfileException("Could not delete the Restaurant", e);
	        }
	    }
}
