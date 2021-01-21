package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.CancelDAO;
import com.shinrai.hotelproject.model.CancelMapper;
import com.shinrai.hotelproject.model.CancelModel;


@Repository("cancelDAO")
public class CancelDAOImpl  implements CancelDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


public String cancelUser(CancelModel cancel) {

		String result=null;
	    String sql1 = "select reservation_id, user.user_id, booking_status" +
	    			  " from reservation inner join user" +
	    			  " on reservation.user_id = user.user_id" +
	    			  " where EmailAddress = ? and reservation_id = ?";

	    System.out.println(sql1);
	    try
	    {
	    	List<CancelModel> cancelQuery = getJdbcTemplate().query(sql1,new Object[]
					{cancel.getEmailAddress(),cancel.getReservationId()}
		    		,new CancelMapper());
	    	System.out.println(cancelQuery.get(0).getReservationId());
	    	if(cancelQuery.get(0).getBookingStatus().equals("cancelled"))
	    	{
	    		result="It is already cancelled";
	    	}
	    	else
	    	{
	    		String sql = "UPDATE reservation INNER JOIN user ON reservation.user_id = user.user_id"
						 + " SET booking_status = 'cancelled' WHERE EmailAddress=? and reservation_id=?"
						 + " and booking_status = 'booked'";



			System.out.println(sql);
			System.out.println("EmailAddress : " + cancel.getEmailAddress());
			System.out.println("RservationID : " + cancel.getReservationId());

			int returnValue = getJdbcTemplate().update(
					sql,
					new Object[] { cancel.getEmailAddress(),
								   cancel.getReservationId()});
			if(1 == returnValue)
				return "Your Booking is cancelled!";
			else
				return "Your booking cancellation is failed!";
	    	}
	    }
	    catch(Exception ex) {
	    	System.out.println("ex.toString() : " + ex.toString());
	    	result="No details found";
	    }
	    return result;
	}

}
