package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CheckMapper implements RowMapper<CheckModel>{

	public CheckModel mapRow(ResultSet rs, int rowNum) throws SQLException{
		CheckModel check = new CheckModel();

		check.setReservationId(rs.getInt("reservation_id"));
		check.setNumberOfDaysForStaying(rs.getInt("number_of_days_for_staying"));
		check.setNumberOfRooms(rs.getInt("number_of_rooms"));
		check.setNumberOfPeople(rs.getInt("number_of_people"));
		check.setCheckInDate(rs.getDate("check_in_date"));
		check.setCheckOutDate(rs.getDate("check_out_date"));
		check.setBookingStatus(rs.getString("booking_status"));

		return check;
	}

}
