package com.shinrai.hotelproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.Reservation;
import com.shinrai.hotelproject.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;

	@RequestMapping(value = "/newbooking", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.CREATED)
	public @ResponseBody String newBooking(@RequestBody Reservation newReservation) {
		String result = reservationService.newBooking(newReservation);
		System.out.println(newReservation.getEmailAddress());
		return result;
	}
}
