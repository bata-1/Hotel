package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CancelMapper implements RowMapper<CancelModel> {
	public CancelModel mapRow(ResultSet rs, int rowNum) throws SQLException{
		CancelModel cancel = new CancelModel();
		cancel.setUserId(rs.getInt("user_id"));
		cancel.setReservationId(rs.getInt("reservation_id"));
		cancel.setBookingStatus(rs.getString("booking_status"));
		return cancel;
	}
}

