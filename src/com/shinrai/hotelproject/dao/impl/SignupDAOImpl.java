package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.SignupDAO;
import com.shinrai.hotelproject.model.SignupModel;

@Repository("signupDAO")
public class SignupDAOImpl implements SignupDAO{
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public List<SignupModel> getUser(int signupId){
		List<SignupModel> signup = null;
//		String sql = "select * from product where id=?";
//		List<Signup> signup = getJdbcTemplate().query(sql,new Object[] {signupId},new SignupMapper());
		return signup;
	}


	public String registerNewUser(SignupModel signup) {

		String sql = "insert into user(EmailAddress,password,phonenumber) values(?,?,?)";
		String sql2 = "insert into user_role(EmailAddress,role) values(?,'ROLE_NORMAL')";
		System.out.println(sql);
		System.out.println(sql2);
		System.out.println(signup.getEmailAddress());
		System.out.println(signup.getPassword());
		System.out.println(signup.getPhoneNumber());
		String result=null;

		//below syntax will insert the data in the table
		try {
		int returnValue = getJdbcTemplate().update(
				sql,
				new Object[] { signup.getEmailAddress(),
							   signup.getPassword(),
							   signup.getPhoneNumber()});


		if(1 == returnValue)
		{
			int returnValue2 = getJdbcTemplate().update(
					sql2,
					new Object[] { signup.getEmailAddress()});
			System.out.println(returnValue2);
			result= "User is successfully registered !";
		}
		else
		{
			result= "User registration is failed";
		}
	}catch(Exception ex)
	{
		result="User is already registered with this Email Address. Please try with another Email Address";
	}

		return result;
	}


	public List<SignupModel> getUser(){
		//TODO Auto-generated method stub
		return null;
	}
}



