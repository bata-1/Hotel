package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ContactMapper implements RowMapper<Contact>{

	public Contact mapRow(ResultSet rs, int rowNum) throws SQLException{
		Contact contact=new Contact();
		contact.setName(rs.getString("name"));
		contact.setEmailAddress(rs.getString("emailAddress"));
		contact.setPhoneNumber(rs.getInt("phoneNumber"));
		contact.setComments(rs.getString("comments"));
		return contact;
	}

}
