package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ImageDetailMapper implements RowMapper<Event>{

	public Event mapRow(ResultSet rs, int rowNum) throws SQLException{
		Event event = new Event();

		event.setPath(rs.getString("path"));

		return event;
	}
}
