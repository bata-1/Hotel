package com.shinrai.hotelproject.dao;

import com.shinrai.hotelproject.model.LoginModel;

public interface LoginDAO {

	public String checkLoginUser(LoginModel newlogin);
	//public String registerNewUser(LoginModel login);
}
