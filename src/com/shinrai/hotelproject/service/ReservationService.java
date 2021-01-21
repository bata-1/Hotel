package com.shinrai.hotelproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shinrai.hotelproject.dao.ReservationDAO;
import com.shinrai.hotelproject.model.Reservation;

@Service
public class ReservationService {

	@Autowired
	private ReservationDAO reservationDAO;

	public String newBooking(Reservation newReservation) {
		System.out.println("Inside Service");
		String result=reservationDAO.newBooking(newReservation);
		return result;
	}
}
