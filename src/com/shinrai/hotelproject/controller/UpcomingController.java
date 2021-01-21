package com.shinrai.hotelproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.UpcomingModel;
import com.shinrai.hotelproject.service.UpcomingService;


@Controller
public class UpcomingController {

	@Autowired
	private UpcomingService upcomingService;

	@RequestMapping(value = "/upcoming", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody List<UpcomingModel> selectNewUserDetails(){
		//use RequestParam and then go ahead
		System.out.println("Controller : " );
		List<UpcomingModel> result = upcomingService.displayEventFromData();
		return result;

	}

}
