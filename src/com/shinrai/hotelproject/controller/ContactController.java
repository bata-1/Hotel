package com.shinrai.hotelproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.Contact;
import com.shinrai.hotelproject.service.ContactService;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;

	@RequestMapping(value = "/contact", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.CREATED)
	public @ResponseBody String newContact(@RequestBody Contact newContact) {
		String result = contactService.newContact(newContact);
		return result;
	}
}
