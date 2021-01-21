package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UpcomingMapper implements RowMapper<UpcomingModel> {

	public UpcomingModel mapRow(ResultSet rs, int rowNum) throws SQLException{
		UpcomingModel upcoming = new UpcomingModel();

		upcoming.setEventName(rs.getString("event_name"));
		upcoming.setEventFromDate(rs.getDate("event_from_date"));
		upcoming.setEventToDate(rs.getDate("event_to_date"));
		upcoming.setDescription(rs.getString("description"));

		return upcoming;
	}


}
