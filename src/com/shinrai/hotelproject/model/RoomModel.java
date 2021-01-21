package com.shinrai.hotelproject.model;

public class RoomModel {

	private int number_of_beds;

	private String bed_size;

	private String room_grade;

	private String room_type;

	private int price;


	public int getNumber_of_beds() {
		return number_of_beds;
	}
	public void setNumber_of_beds(int number_of_beds) {
		this.number_of_beds = number_of_beds;
		System.out.println("number_of_beds : "+number_of_beds);
	}

	public String getBed_size() {
		return bed_size;
	}
	public void setBed_size(String bed_size) {
		this.bed_size = bed_size;
	}

	public String getRoom_grade() {
		return room_grade;
	}
	public void setRoom_grade(String room_grade) {
		this.room_grade = room_grade;
	}

	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
