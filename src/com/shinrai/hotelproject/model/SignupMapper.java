package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SignupMapper implements RowMapper<SignupModel>{

	public SignupModel mapRow(ResultSet rs, int rowNum) throws SQLException{
		SignupModel signup = new SignupModel();

		signup.setEmailAddress(rs.getString("emailaddress"));
		signup.setPassword(rs.getString("password"));
		signup.setPhoneNumber(rs.getInt("phonenumber"));
		return signup;
	}
}

