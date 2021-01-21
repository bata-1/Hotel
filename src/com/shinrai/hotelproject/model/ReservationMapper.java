package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ReservationMapper implements RowMapper<Integer>{

	public Integer mapRow(ResultSet rs, int rowNum) throws SQLException{
		Integer i=rs.getInt("cnt");
		return i;
	}
	public String mapStandardRoom(ResultSet rs, int rowNum) throws SQLException{
		String i=rs.getString("room_id");
		return i;
	}
}
