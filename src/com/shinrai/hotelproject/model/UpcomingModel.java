package com.shinrai.hotelproject.model;

import java.util.Date;

public class UpcomingModel {

	private String eventName;

	private Date eventFromDate;

	private Date eventToDate;

	private String description;


	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}


	public Date getEventFromDate() {
		return eventFromDate;
	}
	public void setEventFromDate(Date eventFromDate) {
		this.eventFromDate = eventFromDate;
	}


	public Date getEventToDate() {
		return eventToDate;
	}
	public void setEventToDate(Date eventToDate) {
		this.eventToDate = eventToDate;
	}


	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}


}
