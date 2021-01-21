package com.shinrai.hotelproject.dao;

import java.util.List;

import com.shinrai.hotelproject.model.Meal;

public interface MealDAO {

	public List<Meal> checkBreakfast(int available);

	public List<Meal> checkLunch(int available);

	public List<Meal> checkDinner(int available);
}
