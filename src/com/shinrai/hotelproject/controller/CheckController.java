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

import com.shinrai.hotelproject.model.CheckModel;
import com.shinrai.hotelproject.service.CheckService;


@Controller
public class CheckController {

	@Autowired
	private CheckService checkService;

	@RequestMapping(value = "/checkUser", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody List<CheckModel> selectNewUserDetails
	(@RequestParam("emailAddress") String emailAddress,
			@RequestParam("reservationId") int reservationId) {
		//use RequestParam and then go ahead
		System.out.println("Controller : ");
		CheckModel chm=new CheckModel();
		chm.setEmailAddress(emailAddress);
		chm.setReservationId(reservationId);
		List<CheckModel> result = checkService.displayData(chm);
		System.out.println(" Reservation id "+result.get(0).getReservationId());
		return result;


	}

}
