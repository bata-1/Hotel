package com.shinrai.hotelproject.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.MealDAO;
import com.shinrai.hotelproject.model.Meal;
import com.shinrai.hotelproject.model.MealMapper;

@Repository("MealDAO")
public class MealDAOImpl implements MealDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public List<Meal> checkBreakfast(int available){
		String sql = "select * from meal where breakfast=?";
		/*This type of coding is called as hard coded  which is bad: select * from meal where breakfast=1*/
		List<Meal> result = getJdbcTemplate().query(sql,new Object[] {available},new MealMapper());
		return result;
	}

	public List<Meal> checkLunch(int available){
		String sql = "select * from meal where lunch=?";
		List<Meal> result = getJdbcTemplate().query(sql,new Object[] {available},new MealMapper());
		return result;
	}

	public List<Meal> checkDinner(int available){
		String sql = "select * from meal where dinner=?";
		List<Meal> result = getJdbcTemplate().query(sql,new Object[] {available},new MealMapper());
		return result;
	}
}
