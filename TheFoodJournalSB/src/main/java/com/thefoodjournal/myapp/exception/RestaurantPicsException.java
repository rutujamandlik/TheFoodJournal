package com.thefoodjournal.myapp.exception;

public class RestaurantPicsException extends Exception{

	public RestaurantPicsException(String message)
	{
		super(message);
	}
	
	public RestaurantPicsException(String message, Throwable cause)
	{
		super(message,cause);
	}

}
