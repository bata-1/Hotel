package com.shinrai.hotelproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.RoomModel;
import com.shinrai.hotelproject.service.RoomService;


@Controller
public class RoomController {

	@Autowired
	private RoomService roomService;

	@RequestMapping(value = "/hotel_project_room", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.OK)
	public @ResponseBody List<RoomModel> selectNewUserDetails(@RequestParam("grade") String roomGrade) {
		//use RequestParam and then go ahead
		System.out.println("Controller : " + roomGrade);
		RoomModel chm=new RoomModel();
		chm.setRoom_grade(roomGrade);
		List<RoomModel> result = roomService.displayData(chm);
		return result;


	}

}

		/* 0626(Wed)
		 System.out.println("Controller : " + roomGrade);
		 String result = roomService.displayData(roomGrade);
		 return result;
		 */

		/*
		System.out.println("Controller : " + newRoom.toString());
		String result = roomService.displayData(newRoom);
		return result;
		*/

