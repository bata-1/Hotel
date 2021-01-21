package com.shinrai.hotelproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.CancelModel;
import com.shinrai.hotelproject.service.CancelService;

@Controller
public class CancelController {

	@Autowired
	private CancelService cancelService;

	@RequestMapping(value = "/cancelUser", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody String selectNewUserDetails
		   (@RequestParam("emailAddress") String emailAddress,
			@RequestParam("reservationId") int reservationId) {

		//System.out.println("1.Controller : " + newLogin.toString());
		//String result = loginService.registerNewUser(newLogin);
		//List<LoginModel> result = loginService.registerNewUser(newLogin);

		System.out.println("1.Reservation_id : " + reservationId);
		CancelModel cancelmodel=new CancelModel();

		cancelmodel.setReservationId(reservationId);
		cancelmodel.setEmailAddress(emailAddress);
		String result = cancelService.cancelUser(cancelmodel);
		System.out.println("Controller : " + cancelmodel.getReservationId());
		System.out.println("result : " + result);
		return result;
	}

}
