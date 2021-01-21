package com.shinrai.hotelproject.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class LoginModel {

	@JsonProperty("emailaddress")
	private String emailAddress;

	@JsonProperty("password")
	private String password;

	public String getEmailaddress() {
		return emailAddress;
	}
	public void setEmailaddress(String emailaddress) {
		this.emailAddress = emailaddress;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String pass) {
		this.password = pass;
	}


}
