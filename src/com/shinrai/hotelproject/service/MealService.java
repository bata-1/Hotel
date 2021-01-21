package com.shinrai.hotelproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.MealDAO;
import com.shinrai.hotelproject.model.Meal;

@Service
public class MealService {

	@Autowired
	private MealDAO mealDAO;

	public List<Meal> checkMeal(String mealTime){
		int available=1;
		List<Meal> result=null;
		if(mealTime.equals("breakfast")) {
			result=mealDAO.checkBreakfast(available);
		}
		else if(mealTime.equals("lunch")) {
			result=mealDAO.checkLunch(available);
		}
		else if(mealTime.equals("dinner")) {
			result=mealDAO.checkDinner(available);
		}
		return result;
	}
}
