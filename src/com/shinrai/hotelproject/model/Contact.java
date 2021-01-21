package com.shinrai.hotelproject.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Contact {

	@JsonProperty("name")
	private String name;

	@JsonProperty("emailAddress")
	private String emailAddress;

	@JsonProperty("phoneNumber")
	private int phoneNumber;

	@JsonProperty("comments")
	private String comments;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

}
