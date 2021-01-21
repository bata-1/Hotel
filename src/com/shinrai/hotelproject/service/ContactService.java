package com.shinrai.hotelproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.ContactDAO;
import com.shinrai.hotelproject.model.Contact;

@Service
public class ContactService {

	@Autowired
	private ContactDAO contactDAO;

	public String newContact(Contact newContact) {
		String result=contactDAO.newContact(newContact);
		System.out.println(result);
		return result;
	}
}
