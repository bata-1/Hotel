package com.shinrai.hotelproject.controller;

//import java.util.List;

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

import com.shinrai.hotelproject.model.LoginModel;
import com.shinrai.hotelproject.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/checkLoginUser", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody String selectNewUserDetails
	(@RequestParam("emailaddress") String emailaddress,
			@RequestParam("password") String password) {

		//System.out.println("1.Controller : " + newLogin.toString());
		//String result = loginService.registerNewUser(newLogin);
		//List<LoginModel> result = loginService.registerNewUser(newLogin);

		System.out.println("1.Emailaddress : " + emailaddress);
		LoginModel loginmodel=new LoginModel();
		loginmodel.setEmailaddress(emailaddress);
		loginmodel.setPassword(password);
		System.out.println(loginmodel.getEmailaddress());
		System.out.println(loginmodel.getPassword());
		System.out.println(loginmodel);

		String result = loginService.checkLoginUser(loginmodel);
		System.out.println(loginmodel.getEmailaddress());
		return result;
	}

}
