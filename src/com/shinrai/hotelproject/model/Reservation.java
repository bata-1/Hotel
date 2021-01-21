package com.shinrai.hotelproject.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Reservation {

	@JsonProperty("roomId")
	private int roomId;

	@JsonProperty("reservationId")
	private int reservationId;

	@JsonProperty("roomGrade")
	private String roomGrade;

	@JsonProperty("checkInDate")
	private Date checkInDate;

	@JsonProperty("checkOutDate")
	private Date checkOutDate;

	@JsonProperty("numberOfPeople")
	private int numberOfPeople;

	@JsonProperty("numberOfStandardRooms")
	private int numberOfStandardRooms;

	@JsonProperty("numberOfSuperiorRooms")
	private int numberOfSuperiorRooms;

	@JsonProperty("numberOfDeluxeRooms")
	private int numberOfDeluxeRooms;

	@JsonProperty("emailAddress")
	private String emailAddress;

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public int getNumberOfStandardRooms() {
		return numberOfStandardRooms;
	}

	public void setNumberOfStandardRooms(int numberOfStandardRooms) {
		this.numberOfStandardRooms = numberOfStandardRooms;
	}

	public int getNumberOfSuperiorRooms() {
		return numberOfSuperiorRooms;
	}

	public void setNumberOfSuperiorRooms(int numberOfSuperiorRooms) {
		this.numberOfSuperiorRooms = numberOfSuperiorRooms;
	}

	public int getNumberOfDeluxeRooms() {
		return numberOfDeluxeRooms;
	}

	public void setNumberOfDeluxeRooms(int numberOfDeluxeRooms) {
		this.numberOfDeluxeRooms = numberOfDeluxeRooms;
	}

	public int getNumberOfPeople() {
		return numberOfPeople;
	}

	public void setNumberOfPeople(int numberOfPeople) {
		this.numberOfPeople = numberOfPeople;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public String getRoomGrade() {
		return roomGrade;
	}

	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
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
}
