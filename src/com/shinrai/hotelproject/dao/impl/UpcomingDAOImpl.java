package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.UpcomingDAO;
import com.shinrai.hotelproject.model.UpcomingMapper;
import com.shinrai.hotelproject.model.UpcomingModel;


@Repository("upcomingDAO")
public class UpcomingDAOImpl implements UpcomingDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public List<UpcomingModel> displayEventFromData() {

		String sql = "select event_name,event_from_date,event_to_date,description from event \r\n"
					  + " where event_from_date > now() order by event_from_date asc limit 3;";
		System.out.println(sql);
		List<UpcomingModel> date = getJdbcTemplate().query(sql,new Object[]
				{},new UpcomingMapper());
		return date;

	}

}
