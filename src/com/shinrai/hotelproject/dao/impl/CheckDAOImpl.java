package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.CheckDAO;
import com.shinrai.hotelproject.model.CheckMapper;
import com.shinrai.hotelproject.model.CheckModel;

@Repository("checkDAO")
public class CheckDAOImpl implements CheckDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


	public List<CheckModel> displayData(CheckModel check) {

		String sql = "select reservation_id, number_of_days_for_staying, number_of_rooms,"
						+ " number_of_people, check_in_date, check_out_date, booking_status"
						+ " from reservation inner join user on reservation.user_id = user.user_id"
						+ " where EmailAddress = ? and reservation_id = ?";
		List<CheckModel> check1 = getJdbcTemplate().query(sql,new Object[]
				{check.getEmailAddress(),check.getReservationId()},new CheckMapper());
		return check1;

	}

}
