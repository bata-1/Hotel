package com.shinrai.hotelproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.UpcomingDAO;
import com.shinrai.hotelproject.model.UpcomingModel;

@Service
public class UpcomingService {

	@Autowired
	private UpcomingDAO upcomingDAO;

	public List<UpcomingModel> displayEventFromData() {
		List<UpcomingModel> result = upcomingDAO.displayEventFromData();
		System.out.println("displayEventFromData : " + result);
		return result;
	}

}








