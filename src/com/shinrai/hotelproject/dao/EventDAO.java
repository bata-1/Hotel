package com.shinrai.hotelproject.dao;

import java.util.List;

import com.shinrai.hotelproject.model.Event;

public interface EventDAO {

	public String checkEventDetails(String eventName);

	public List<Event> getImage(String eventName);

	public List<Event> getEvent(String eventName);

}
