package com.shinrai.hotelproject.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MealMapper implements RowMapper<Meal> {

	public Meal mapRow(ResultSet rs, int rowNum) throws SQLException{
		Meal meal=new Meal();
		meal.setMealName(rs.getString("meal_name"));
		meal.setBreakfast(rs.getBoolean("breakfast"));
		meal.setLunch(rs.getBoolean("lunch"));
		meal.setDinner(rs.getBoolean("dinner"));
		return meal;
	}

}
