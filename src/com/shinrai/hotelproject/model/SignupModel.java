package com.shinrai.hotelproject.model;



public class SignupModel {


	private String emailAddress;


	private String password;


	private int phoneNumber;


	private String role;




	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailaddress) {
		this.emailAddress = emailaddress;
		System.out.println("  "+emailaddress);

	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String pass) {
		this.password = pass;
	}
	public int getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(int phonenumber) {
		this.phoneNumber = phonenumber;
	}

	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}


}


