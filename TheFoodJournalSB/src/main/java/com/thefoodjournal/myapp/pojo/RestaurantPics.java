package com.thefoodjournal.myapp.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "RestaurantPics")
@Table(name = "RestaurantPics")
public class RestaurantPics {
	
	@Id
	@Column(name="pic_id")
	private int pic_id;
	
	private int rest_id;
	
	private String filepath;

	public int getRest_id() {
		return rest_id;
	}
	
	

	public int getPic_id() {
		return pic_id;
	}



	public void setPic_id(int pic_id) {
		this.pic_id = pic_id;
	}



	public void setRest_id(int rest_id) {
		this.rest_id = rest_id;
	}

	public String getFilepath() {
		return filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	@Transient
    public String getPhotosImagePath() {
		System.out.println("Rutuja");
        if (filepath == null) return null;
        System.out.println("Rutuja123");
        return "/restPics/" + rest_id + "/" + filepath;
    }

	@Override
	public String toString() {
		return "RestaurantPics [rest_id=" + rest_id + ", filepath=" + filepath + "]";
	}

	
	

}
