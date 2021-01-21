package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ReservationIdMapper implements RowMapper<Integer>{

	public Integer mapRow(ResultSet rs, int rowNum) throws SQLException{
		Integer i=rs.getInt("reservation_id");
		return i;
	}
}
