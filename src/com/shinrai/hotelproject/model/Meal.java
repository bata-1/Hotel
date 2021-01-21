package com.shinrai.hotelproject.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Meal {

	@JsonProperty("mealId")
	private int mealId;

	@JsonProperty("mealName")
	private String mealName;

	@JsonProperty("breakfast")
	private Boolean breakfast;

	@JsonProperty("lunch")
	private Boolean lunch;

	@JsonProperty("dinner")
	private Boolean dinner;

	public int getMealId() {
		return mealId;
	}

	public void setMealId(int mealId) {
		this.mealId = mealId;
	}

	public String getMealName() {
		return mealName;
	}

	public void setMealName(String mealName) {
		this.mealName = mealName;
	}

	public Boolean getBreakfast() {
		return breakfast;
	}

	public void setBreakfast(Boolean breakfast) {
		this.breakfast = breakfast;
	}

	public Boolean getLunch() {
		return lunch;
	}

	public void setLunch(Boolean lunch) {
		this.lunch = lunch;
	}

	public Boolean getDinner() {
		return dinner;
	}

	public void setDinner(Boolean dinner) {
		this.dinner = dinner;
	}
}
