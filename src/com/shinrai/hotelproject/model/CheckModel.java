package com.shinrai.hotelproject.model;

import java.util.Date;

public class CheckModel {

	//@JsonProperty("emailAddress")
	private String emailAddress;

	//@JsonProperty("reservationId")
	private int reservationId;

	//private int number_of_days_for_staying;/*Wrong way: do not use underscore*/
	private int numberOfDaysForStaying;/*Correct way*/

	private int numberOfRooms;

	private int numberOfPeople;

	private Date checkInDate;

	private Date checkOutDate;

	private String bookingStatus;


	//jsp will check for reservation_id, but it is getting reservationId
	public int getReservationId() {
		return reservationId;
	}
	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public int getNumberOfDaysForStaying() {
		return numberOfDaysForStaying;
	}
	public void setNumberOfDaysForStaying(int numberOfDaysForStaying) {
		this.numberOfDaysForStaying = numberOfDaysForStaying;
	}

	public int getNumberOfRooms() {
		return numberOfRooms;
	}
	public void setNumberOfRooms(int numberOfRooms) {
		this.numberOfRooms = numberOfRooms;
	}

	public int getNumberOfPeople() {
		return numberOfPeople;
	}
	public void setNumberOfPeople(int numberOfPeople) {
		this.numberOfPeople = numberOfPeople;
	}

	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}

	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public String getBookingStatus() {
		return bookingStatus;
	}
	public void setBookingStatus(String bookingStatus) {
		this.bookingStatus = bookingStatus;
	}

}
