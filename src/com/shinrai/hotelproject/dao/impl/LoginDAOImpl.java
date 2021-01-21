package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.LoginDAO;
import com.shinrai.hotelproject.model.LoginMapper;
import com.shinrai.hotelproject.model.LoginModel;


@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


	public String checkLoginUser(LoginModel newlogin) {

		System.out.println("Inside DAOImpl");
		System.out.println(newlogin.getEmailaddress());
		System.out.println(newlogin.getPassword());
		String sql = "select * from user where "
				+ "emailaddress=? and password=?";
		List<LoginModel> login1 = getJdbcTemplate().query(sql,new Object[]
				{newlogin.getEmailaddress(),newlogin.getPassword()},new LoginMapper());
		try {
		if(login1.get(0).getEmailaddress()!=null&&login1.get(0).getEmailaddress().equals(newlogin.getEmailaddress())) {
			return "Login Successful";
		}else {
			return "Login is failed";
		}
		}catch(Exception e){
			return "Login is failed";
		}
		/*
		System.out.println(sql);
		System.out.println(login.getEmailaddress());
		System.out.println(login.getPassword());
		int returnValue = getJdbcTemplate().update(
				sql,
				new Object[] { login.getEmailaddress(),login.getPassword(),
						        new LoginMapper()});
		if(1 == returnValue)
			return "Product creation is SUCCESS";
		else
			return "Product creation is FAILURE";
		*/
	}

	public List<LoginModel> getUser(){
		//TODO Auto-generated method stub
		return null;
	}

}
