package com.shinrai.hotelproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.RoomDAO;
import com.shinrai.hotelproject.model.RoomModel;

@Service
public class RoomService {

	@Autowired
	private RoomDAO roomDAO;

	public List<RoomModel> displayData(RoomModel roomGrade) {
		List<RoomModel> result = roomDAO.displayData(roomGrade);
		System.out.println("displayData : " + result);
		return result;
	}

	/*0626(Wed)
	 String result = roomDAO.displayData(roomGrade);
	 System.out.println("displayData : " + result);
	 return result;
	 */

}
