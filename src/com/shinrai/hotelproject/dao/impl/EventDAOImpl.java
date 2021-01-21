package com.shinrai.hotelproject.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.EventDAO;
import com.shinrai.hotelproject.model.Event;
import com.shinrai.hotelproject.model.EventMapper;
import com.shinrai.hotelproject.model.ImageDetailMapper;

@Repository("EventDAO")
public class EventDAOImpl implements EventDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public List<Event> getEvent(String eventName){
		String sql = "select * from event where event_name=?";
		List<Event> event = getJdbcTemplate().query(sql,new Object[] {eventName},new EventMapper());
		return event;
	}

	public String checkEventDetails(String eventName) {
		System.out.print("Inside daoimpl");
		String sql = "select * from event where event_name=?";
		List<Event> eve = getJdbcTemplate().query(sql,new Object[] {eventName},new EventMapper());
		System.out.println(eve.size());
		String result=null;
		Date eventDate=eve.get(0).getEventFromDate();
		Date today = new Date();
		if(eventDate.before(today)) {
			result="This event is over";
		}
		else {
			result="This event will be held on "+eventDate.toString();
		}
			return result;
		}

	public List<Event> getImage(String eventName){

		String sql = "select i.path from event e\r\n" +
				"inner join  picture_details p\r\n" +
				"on p.inventory_id=e.inventory_id\r\n" +
				"inner join image i\r\n" +
				"on i.image_id=p.image_id\r\n" +
				"where e.event_name=?";
		System.out.println(sql);
		List<Event> img = getJdbcTemplate().query(sql,new Object[] {eventName},new ImageDetailMapper());
		return img;
	}
}
