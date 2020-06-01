package by.oskerko.lcac.service.validation;

import java.math.BigDecimal;

import by.oskerko.lcac.bean.LoginData;

public class DataValidator {

	private static final DataValidator instance = new DataValidator();

	private DataValidator() {
	}

	public boolean checkUser(LoginData loginData) {
		System.out.println("я - заглушка валидатора");
		return true;
	}

	public boolean checkRegistration(String login, String password, String name, String surname, String email) {
		System.out.println("я - заглушка валидатора");
		return true;
	}

	public boolean checkFlight(String login, String password, String strDeparture) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkFlight (String strDeparture) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkDeleteFlight (String strDateFrom, String strDateTo) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkGetAllOrders (String strDateFrom, String strDateTo) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkFlightNumber (int flightNumber) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean chooseFlight (int flightNumber, BigDecimal price) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkAddNewFlight (String origin, String destination, String timeDeparture,
			String timeArrival, String numberOfSeats, String emptySeats, String distance) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkDeleteSelectedFlight (String[] flightsNumArr) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public boolean checkEditUserProfile (String name, String surname, String email) {
		System.out.println("я - заглушка валидатора");
		return true;
	}

	public boolean checkPassword (String password, String newPassword) {
		System.out.println("я - заглушка валидатора");
		return true;
	}
	
	public static DataValidator getInstance() {
		return instance;
	}

}
