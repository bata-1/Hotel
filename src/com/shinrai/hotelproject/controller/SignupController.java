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

import com.shinrai.hotelproject.model.SignupModel;
import com.shinrai.hotelproject.service.SignupService;

@Controller
public class SignupController {

	@Autowired
	private SignupService signupService;

	@RequestMapping(value = "/hotel_project_signUp", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody String insertNewUserDetails(@RequestParam("emailAddress") String emailAddress,@RequestParam("password") String password,@RequestParam("phoneNumber") Integer phoneNumber) {

		SignupModel signupmodel=new SignupModel();
		signupmodel.setEmailAddress(emailAddress);
		signupmodel.setPassword(password);
		signupmodel.setPhoneNumber(phoneNumber);
		//@RequestParam("emailAddress") String emailAddress,
		//@RequestParam("password") String password,
		//@RequestParam("phoneNumber") int phoneNumber
		System.out.println("Controller : " + signupmodel.toString());
		String result = signupService.registerNewUser(signupmodel);
		System.out.println("Final result is:"+result);
		return result;
	}

}



