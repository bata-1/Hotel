package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LoginMapper implements RowMapper<LoginModel> {
	public LoginModel mapRow(ResultSet rs, int rowNum) throws SQLException{
		LoginModel login = new LoginModel();
		login.setEmailaddress(rs.getString("emailaddress"));
		login.setPassword(rs.getString("password"));
		return login;
	}
}
