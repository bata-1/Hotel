package com.shinrai.hotelproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.Event;
import com.shinrai.hotelproject.service.EventService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;

	@RequestMapping(value = "/checkEvent", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.CREATED)
	public @ResponseBody String checkEventDetails(@RequestParam("eventName") String eventName) {

		System.out.print("Inside controller");
		String result = eventService.checkEventDetails(eventName);
		return result;
	}

	@RequestMapping(value="/getImage",method=RequestMethod.GET,consumes=MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody List<Event> getImage(@RequestParam("eventName") String eventName) {
	System.out.print(eventName);
		List<Event> img=eventService.getImage(eventName);
		System.out.println(img.get(0).getPath());
		return img;
	}
}
