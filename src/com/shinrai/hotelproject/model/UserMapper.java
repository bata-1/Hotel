package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<String>{

	public String mapRow(ResultSet rs, int rowNum) throws SQLException{
		String i=rs.getString("user_id");
		return i;
	}
}
