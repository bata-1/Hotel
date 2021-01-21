package com.shinrai.hotelproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.CheckDAO;
import com.shinrai.hotelproject.model.CheckModel;

@Service
public class CheckService {

	@Autowired
	private CheckDAO checkDAO;

	public List<CheckModel> displayData(CheckModel check) {
		List<CheckModel> result = checkDAO.displayData(check);
		System.out.println("displayData : " + result);
		return result;
	}

}
