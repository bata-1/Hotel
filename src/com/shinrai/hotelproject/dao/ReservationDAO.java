package com.shinrai.hotelproject.dao;

import com.shinrai.hotelproject.model.Reservation;

public interface ReservationDAO {

	public String newBooking(Reservation newReservation) ;

	public int checkBooking(String grade,String checkIn,String checkOut,String checkIn2,String checkOut2);
}
