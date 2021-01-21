package com.shinrai.hotelproject.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.ContactDAO;
import com.shinrai.hotelproject.model.Contact;

@Repository("contactDAO")
public class ContactDAOImpl implements ContactDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public String newContact(Contact newContact) {
		String sql="insert into contact(name,emailAddress,phoneNumber,comments)\r\n" +
				"values(?,?,?,?)";
		int returnValue=0;
		returnValue=getJdbcTemplate( ).update(
				sql,
				new Object[] {newContact.getName(),newContact.getEmailAddress(),
						newContact.getPhoneNumber(),newContact.getComments()});
		if(returnValue==1) {
			return "Submitted Successfully";
		}
		else {
			return "Submitted is failed";
		}
	}
}
