package com.shinrai.hotelproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.SignupDAO;
import com.shinrai.hotelproject.model.SignupModel;


@Service
public class SignupService {
	@Autowired
	private SignupDAO signupDAO;

	public String registerNewUser(SignupModel newSignup) {
		String result = signupDAO.registerNewUser(newSignup);
		System.out.println("registerNewUser : " + result);
		return result;
	}
}
