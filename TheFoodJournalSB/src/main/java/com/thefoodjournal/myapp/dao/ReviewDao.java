package com.thefoodjournal.myapp.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.thefoodjournal.myapp.exception.ProfileException;
import com.thefoodjournal.myapp.exception.ReviewException;
import com.thefoodjournal.myapp.pojo.Profile;
import com.thefoodjournal.myapp.pojo.Review;
import com.thefoodjournal.myapp.dao.DAO;

@Component
public class ReviewDao extends DAO{
	public ReviewDao() {
    }

    public void save(Review review)
            throws ReviewException {
        try {
            begin();
            getSession().save(review);
            commit();
        } catch (HibernateException e) {
            rollback();
            throw new ReviewException("Could not save review " + review.getRest_id(), e);
        }
    }
    
    public List<Review> findAll() {
		Query query = getSession().createQuery("FROM Review");
		List<Review> list = query.list();
		return list;
    }
    
}