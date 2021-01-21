package com.shinrai.hotelproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.LoginDAO;
import com.shinrai.hotelproject.model.LoginModel;

@Service
public class LoginService {

	@Autowired
	private LoginDAO loginDAO;

	public String checkLoginUser(LoginModel newlogin) {
		//String result = loginDAO.registerNewUser(newLogin);
		String result = loginDAO.checkLoginUser(newlogin);
		System.out.println(result);
		return result;
	}


}
