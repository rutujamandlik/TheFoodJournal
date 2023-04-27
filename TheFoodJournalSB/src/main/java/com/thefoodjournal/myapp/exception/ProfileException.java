package com.thefoodjournal.myapp.exception;

public class ProfileException extends Exception{

	public ProfileException(String message)
	{
		super(message);
	}
	
	public ProfileException(String message, Throwable cause)
	{
		super(message,cause);
	}

}
