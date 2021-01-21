package com.shinrai.hotelproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.CancelDAO;
import com.shinrai.hotelproject.model.CancelModel;

@Service
public class CancelService {

	@Autowired
	private CancelDAO cancelDAO;

	public String cancelUser(CancelModel newCancel) {
		String result = cancelDAO.cancelUser(newCancel);
		System.out.println(result);
		return result;
	}

}

