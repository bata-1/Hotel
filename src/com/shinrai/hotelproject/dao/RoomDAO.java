package com.shinrai.hotelproject.dao;

import java.util.List;

import com.shinrai.hotelproject.model.RoomModel;

//import com.shinrai.hotel_project.model.RoomModel;

public interface RoomDAO {

	public List<RoomModel> displayData(RoomModel roomGrade);

}
