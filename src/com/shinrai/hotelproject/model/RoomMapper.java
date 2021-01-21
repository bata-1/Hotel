package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RoomMapper implements RowMapper<RoomModel>{

	public RoomModel mapRow(ResultSet rs, int rowNum) throws SQLException{
		RoomModel room = new RoomModel();

		room.setNumber_of_beds(rs.getInt("number_of_beds"));
		room.setBed_size(rs.getString("bed_size"));
		room.setRoom_grade(rs.getString("room_grade"));
		room.setRoom_type(rs.getString("room_type"));
		room.setPrice(rs.getInt("price"));
		return room;
	}

}
