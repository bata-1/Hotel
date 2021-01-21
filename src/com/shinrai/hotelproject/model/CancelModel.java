package com.shinrai.hotelproject.model;

public class CancelModel {


	private int userId;

	private int reservationId;

	private String bookingStatus;

	private String emailAddress;


	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getReservationId() {
		return reservationId;
	}
	public void setReservationId(int id) {
		this.reservationId = id;
	}

	public String getBookingStatus() {
		return bookingStatus;
	}
	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}
}
