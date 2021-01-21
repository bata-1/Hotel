package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.RoomDAO;
import com.shinrai.hotelproject.model.RoomMapper;
import com.shinrai.hotelproject.model.RoomModel;

@Repository("roomDAO")
public class RoomDAOImpl  implements RoomDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	/*
	public List<RoomModel> getUser(int signupId){
		List<RoomModel> signup = null;
//		String sql = "select * from product where id=?";
//		List<Signup> signup = getJdbcTemplate().query(sql,new Object[] {signupId},new SignupMapper());
		return signup;
	}
	*/

	public List<RoomModel> displayData(RoomModel roomModel) {

		String sql = "select number_of_beds, bed_size, room_grade, "
						+ "room_type, price from rooms where room_grade = ?";
		System.out.println(roomModel.getRoom_grade());
		List<RoomModel> room1 = getJdbcTemplate().query(sql,new Object[]
				{roomModel.getRoom_grade()},new RoomMapper());
		System.out.println(room1);
		return room1;

		/*
		 String sql = "select number_of_beds, bed_size, room_grade, "
						+ "room_type, price from rooms where room_grade = ?";
		 System.out.println(sql);
		 List<RoomModel> room1 = getJdbcTemplate().query(sql,new Object[]
				{roomGrade},new RoomMapper());
		 Integer i = room1.get(0).getPrice();
		 return i.toString();
		 */


		/*
		String sql = "insert into user(EmailAddress,password,phonenumber) values(?,?,?)";
		System.out.println(sql);
		System.out.println(signup.getNumber_of_beds());
		System.out.println(signup.getBed_size());
		System.out.println(signup.getRoom_grade());
		System.out.println(signup.getRoom_type());
		System.out.println(signup.getPrice());

		//below syntax will insert the data in the table
		int returnValue = getJdbcTemplate().update(
				sql,
				new Object[] { signup.getNumber_of_beds(),
							   signup.getBed_size(),
							   signup.getRoom_grade(),
							   signup.getRoom_type(),
							   signup.getPrice()});
		if(1 == returnValue)
			return "Product creation is SUCCESS!";
		else
			return "Product creation is FAILURE!";
		*/

	}



}
