package com.shinrai.hotelproject.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.joda.time.Days;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.shinrai.hotelproject.dao.ReservationDAO;
import com.shinrai.hotelproject.model.Reservation;
import com.shinrai.hotelproject.model.ReservationIdMapper;
import com.shinrai.hotelproject.model.ReservationMapper;
import com.shinrai.hotelproject.model.StandardRoomMapper;
import com.shinrai.hotelproject.model.UserMapper;

@Repository("ReservationDAO")
public class ReservationDAOImpl implements ReservationDAO{

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private final String bookingStatus="booked";
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public int checkBooking(String grade,String checkIn,String checkOut, String checkIn2, String checkOut2) {
		String sql="select count(*) as cnt from rooms r \r\n" +
				"inner join reservation_details rd\r\n" +
				"on r.room_id=rd.room_id\r\n" +
				"inner join reservation rs\r\n" +
				"on rd.reservation_id=rs.reservation_id\r\n" +
				"where r.room_grade=? and rs.check_in_date not\r\n" +
				"between ? and ? or rs.check_out_date between ? and ?";

		List<Integer> returnValue=getJdbcTemplate( ).query(
				sql,
				new Object[] {grade,checkIn,checkOut,checkIn,checkOut },new ReservationMapper());

		System.out.println(returnValue.get(0));
		return returnValue.get(0);
	}
	public List<String> checkStandardRoomsAvailability(String check_in,String check_out) {
		String sql="select room_id from rooms where room_grade='Standard' and room_id not in(select r.room_id from rooms r\r\n" +
				"				inner join reservation_details rd\r\n" +
				"				on r.room_id=rd.room_id\r\n" +
				"				inner join reservation re\r\n" +
				"				on rd.reservation_id=re.reservation_id\r\n" +
				"				where r.isAvailable=1 and r.room_grade='Standard' and ((re.check_in_date between ? and ?) or (re.check_out_date between ? and ?)));\r\n" +
				"";

		List<String> returnStandardRoomsId=getJdbcTemplate( ).query(
				sql,
				new Object[] {check_in,check_out,check_in,check_out },new StandardRoomMapper());

		return returnStandardRoomsId;
	}

	public List<String> checkSuperiorRoomsAvailability(String check_in,String check_out) {
		String sql="select room_id from rooms where room_grade='Superior' and room_id not in(select r.room_id from rooms r\r\n" +
				"				inner join reservation_details rd\r\n" +
				"				on r.room_id=rd.room_id\r\n" +
				"				inner join reservation re\r\n" +
				"				on rd.reservation_id=re.reservation_id\r\n" +
				"				where r.isAvailable=1 and r.room_grade='Superior' and ((re.check_in_date between ? and ?) or (re.check_out_date between ? and ?)));\r\n" +
				"";

		List<String> returnSuperiorRoomsId=getJdbcTemplate( ).query(
				sql,
				new Object[] {check_in,check_out ,check_in,check_out},new StandardRoomMapper());

		return returnSuperiorRoomsId;
	}

	public List<String> checkDeluxeRoomsAvailability(String check_in,String check_out) {
		String sql="select room_id from rooms where room_grade='Deluxe' and room_id not in(select r.room_id from rooms r\r\n" +
				"				inner join reservation_details rd\r\n" +
				"				on r.room_id=rd.room_id\r\n" +
				"				inner join reservation re\r\n" +
				"				on rd.reservation_id=re.reservation_id\r\n" +
				"				where r.isAvailable=1 and re.booking_status != 'cancelled' and r.room_grade='Deluxe' and ((re.check_in_date between ? and ?) or (re.check_out_date between ? and ?)));\r\n" +
				"";

		List<String> returnDeluxeRoomsId=getJdbcTemplate( ).query(
				sql,
				new Object[] {check_in,check_out ,check_in,check_out},new StandardRoomMapper());

		return returnDeluxeRoomsId;
	}
	public String checkUserId(String emailAddress) {
		String sql="select user_id from user \r\n" +
				"where EmailAddress=?";

		List<String> getUserId=getJdbcTemplate( ).query(
				sql,
				new Object[] {emailAddress },new UserMapper());

		String userId=getUserId.get(0);
		System.out.println(userId);
		return userId;
	}

	//below method will return the days between two dates. It is done using Joda-time
	public static int daysBetweenUsingJoda(Date d1, Date d2)
	{
		return Days.daysBetween( new LocalDate(d1.getTime()), new LocalDate(d2.getTime())).getDays(); }


	public String newBooking(Reservation newReservation) {
		String result;
		System.out.println(newReservation.getEmailAddress());
		int returnValue=0;
		int available=0;
		String emailAddress=newReservation.getEmailAddress();
		String userId=checkUserId(emailAddress);
		System.out.println(userId);
		if(userId==null) {
			result="User does not exist";
			return result;
		}
		else {
			Date checkIn=newReservation.getCheckInDate();
			Date checkOut=newReservation.getCheckOutDate();
			if(checkIn.after(checkOut)) {
				return "checkInDate should be greater than checkOutDate";
			}
			else {
			List<String> getStandardRoomIds=checkStandardRoomsAvailability(sdf.format(newReservation.getCheckInDate()),sdf.format(newReservation.getCheckOutDate()));
			int countStandardRoomsAvailable=getStandardRoomIds.size();
			if(newReservation.getNumberOfStandardRooms()<=countStandardRoomsAvailable)
			{
				System.out.println("Standard Rooms are available");
				available=available+1;
			}
			List<String> getSuperiorRoomIds=checkSuperiorRoomsAvailability(sdf.format(newReservation.getCheckInDate()),sdf.format(newReservation.getCheckOutDate()));
			int countSuperiorRoomsAvailable=getSuperiorRoomIds.size();
			if(newReservation.getNumberOfSuperiorRooms()<=countSuperiorRoomsAvailable)
			{
				System.out.println("Superior Rooms are available");
				available=available+1;
			}
			List<String> getDeluxeRoomIds=checkDeluxeRoomsAvailability(sdf.format(newReservation.getCheckInDate()),sdf.format(newReservation.getCheckOutDate()));
			int countDeluxeRoomsAvailable=getDeluxeRoomIds.size();
			if(newReservation.getNumberOfDeluxeRooms()<=countDeluxeRoomsAvailable)
			{
				System.out.println("Deluxe Rooms are available");
				available=available+1;
			}

			/*int available=checkBooking(newReservation.getRoomGrade(),newReservation.getCheckInDate().toString(),
					newReservation.getCheckOutDate().toString(),newReservation.getCheckInDate().toString(),
					newReservation.getCheckOutDate().toString());
			System.out.print(available);*/

			if(available!=3) {
				result="Rooms are not available";
				return result;
			}
			else {
				System.out.print(newReservation.getCheckInDate());
				String sql="insert into reservation(user_id,number_of_days_for_staying,number_of_rooms,number_of_people,check_in_date,\r\n" +
						"check_out_date,booking_status)\r\n" +
						"values(?,?,?,?,?,?,?)";
				int numberOfRooms=newReservation.getNumberOfStandardRooms()+
						 newReservation.getNumberOfSuperiorRooms()+newReservation.getNumberOfDeluxeRooms();

				 try {
					 int diff_of_days=daysBetweenUsingJoda(newReservation.getCheckInDate(),newReservation.getCheckOutDate());
					 System.out.println("Diiference is:"+diff_of_days);


		               /* You can also convert the milliseconds to days using this method
		                * float daysBetween =
		                *         TimeUnit.DAYS.convert(difference, TimeUnit.MILLISECONDS)
		                */
			       System.out.println("Number of Days between dates: "+diff_of_days);
			       returnValue=getJdbcTemplate( ).update(
						sql,
						new Object[] {userId,diff_of_days,numberOfRooms,newReservation.getNumberOfPeople( ),newReservation.getCheckInDate(),newReservation.getCheckOutDate( ),bookingStatus});
				 }catch (Exception e) {
				       e.printStackTrace();
				 }
			}
			System.out.println(userId);

			String sql="select reservation_id from reservation\r\n" +
					"where user_id=? and (check_in_date between ? and ?) \r\n" +
					"and (check_out_date between ? and ?)";
			System.out.println(sdf.format(checkIn));
			System.out.println(newReservation.getCheckOutDate().toString());
			List<Integer> getReservationId=getJdbcTemplate( ).query(
					sql,
					new Object[] {userId,sdf.format(checkIn),sdf.format(checkIn),sdf.format(checkOut),sdf.format(checkOut)},new ReservationIdMapper());

			System.out.println(getStandardRoomIds.size());
			int countRooms=0;

			if(getStandardRoomIds.size()!=0) {
				for(int i=0;i<newReservation.getNumberOfStandardRooms();i++) {
					sql="insert into reservation_details(reservation_id,room_id)\r\n" +
							"values(?,?)";
					returnValue=getJdbcTemplate( ).update(
							sql,
							new Object[] {getReservationId.get(0),getStandardRoomIds.get(i)});
					System.out.println(i);
					countRooms=countRooms+1;
				}
			}
			System.out.println(3);
			if(getSuperiorRoomIds.size()!=0) {
				for(int i=0;i<newReservation.getNumberOfSuperiorRooms();i++) {
					sql="insert into reservation_details(reservation_id,room_id)\r\n" +
							"values(?,?)";
					returnValue=getJdbcTemplate( ).update(
							sql,
							new Object[] {getReservationId.get(0),getSuperiorRoomIds.get(i)});
					countRooms=countRooms+1;
				}
			}
			System.out.println(4);
			if(getDeluxeRoomIds.size()!=0) {
				for(int i=0;i<newReservation.getNumberOfDeluxeRooms();i++) {
					sql="insert into reservation_details(reservation_id,room_id)\r\n" +
							"values(?,?)";
					returnValue=getJdbcTemplate( ).update(
							sql,
							new Object[] {getReservationId.get(0),getDeluxeRoomIds.get(i)});
					countRooms=countRooms+1;
				}
			}
			System.out.println(5);

			int numberOfRooms=newReservation.getNumberOfStandardRooms()+
					 newReservation.getNumberOfSuperiorRooms()+newReservation.getNumberOfDeluxeRooms();
			if(returnValue==1&&countRooms==numberOfRooms) {
				if(getReservationId.size()>1) {
					result="Booking is Success & Reservation id is: "+getReservationId.get(1).toString();
				}else {
				result="Booking is Success & Reservation id is: "+getReservationId.get(0).toString();
			}
			}
			else {
				result="Booking is failed";
			}
			return result;
		}
		}
	}

}
