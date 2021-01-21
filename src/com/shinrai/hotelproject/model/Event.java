package com.shinrai.hotelproject.model;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Event {

	@JsonProperty("eventId")
	private int eventId;

	@JsonProperty("eventName")
	private String eventName;

	@JsonProperty("eventFromDate")
	private Date eventFromDate;

	@JsonProperty("eventToDate")
	private Date eventToDate;

	@JsonProperty("inventoryId")
	private int inventoryId;

	@JsonProperty("imageId")
	private int imageId;

	@JsonProperty("path")
	private String path;

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

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

	public int getInventoryId() {
		return inventoryId;
	}

	public void setInventoryId(int inventoryId) {
		this.inventoryId = inventoryId;
	}
}
