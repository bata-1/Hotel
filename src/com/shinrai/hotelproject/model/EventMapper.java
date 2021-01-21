package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class EventMapper implements RowMapper<Event> {
	public Event mapRow(ResultSet rs, int rowNum) throws SQLException{
		Event event = new Event();
		event.setEventId(rs.getInt("event_id"));
		event.setEventName(rs.getString("event_name"));
		event.setEventFromDate(rs.getDate("event_from_date"));
		event.setEventToDate(rs.getDate("event_to_date"));
		event.setInventoryId(rs.getInt("inventory_id"));
		return event;
	}

}
