package com.shinrai.hotelproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.shinrai.hotelproject.model.Meal;
import com.shinrai.hotelproject.service.MealService;

@Controller
public class MealController {

	@Autowired
	private MealService mealService;

	@RequestMapping(value = "/checkMeal", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseStatus(HttpStatus.CREATED)
	public @ResponseBody List<Meal> checkMeal(@RequestParam("time") String mealTime) {

		List<Meal> result = mealService.checkMeal(mealTime);
		return result;
	}
}
