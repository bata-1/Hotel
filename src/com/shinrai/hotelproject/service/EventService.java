package com.shinrai.hotelproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.EventDAO;
import com.shinrai.hotelproject.model.Event;

@Service
public class EventService {

	@Autowired
	private EventDAO eventDAO;

	public String checkEventDetails(String eventName) {
		System.out.print("Inside service");
		String result = eventDAO.checkEventDetails(eventName);
		System.out.println(result);
		return result;
	}

	public List<Event> getImage(String eventName){

		List<Event> img=eventDAO.getImage(eventName);
		return img;
	}


}
