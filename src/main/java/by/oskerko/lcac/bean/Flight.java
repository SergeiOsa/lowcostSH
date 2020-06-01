package by.oskerko.lcac.bean;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="flight")
public class Flight implements Serializable, Comparable<Flight> {

	private static final long serialVersionUID = -347530948465743170L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="flight_number")
	private int flightNumber;
	
	@Column(name="departure_place")
	private String origin;
	
	@Column(name="arrival_place")
	private String destination;
	
	@Column(name="time_departure")
	private Timestamp departure;
	
	@Column(name="time_arrival")
	private Timestamp arrival;
	
	@Column(name="number_of_seats")
	private int numberOfSeats;
	
	@Column(name="empty_seats")
	private int emptySeats;
	
	@Column(name="distance")
	private int distance;

	public Flight() {
	}

	public Flight(int flightNumber, String origin, String destination, Timestamp departure, Timestamp arrival,
			int numberOfSeats, int emptySeats, int distance) {

		this.flightNumber = flightNumber;
		this.origin = origin;
		this.destination = destination;
		this.departure = departure;
		this.arrival = arrival;
		this.numberOfSeats = numberOfSeats;
		this.emptySeats = emptySeats;
		this.distance = distance;
	}

	@Override
	public int compareTo(Flight o) {
		return departure.compareTo(o.getDeparture());
	}

	public int getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(int flightNumber) {
		this.flightNumber = flightNumber;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Timestamp getDeparture() {
		return departure;
	}

	public void setDeparture(Timestamp departure) {
		this.departure = departure;
	}

	public Timestamp getArrival() {
		return arrival;
	}

	public void setArrival(Timestamp arrival) {
		this.arrival = arrival;
	}

	public int getNumberOfSeats() {
		return numberOfSeats;
	}

	public void setNumberOfSeats(int numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}

	public int getEmptySeats() {
		return emptySeats;
	}

	public void setEmptySeats(int emptySeats) {
		this.emptySeats = emptySeats;
	}

	public int getDistance() {
		return distance;
	}

	public void setDistance(int distance) {
		this.distance = distance;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((arrival == null) ? 0 : arrival.hashCode());
		result = prime * result + ((departure == null) ? 0 : departure.hashCode());
		result = prime * result + ((destination == null) ? 0 : destination.hashCode());
		result = prime * result + distance;
		result = prime * result + emptySeats;
		result = prime * result + flightNumber;
		result = prime * result + numberOfSeats;
		result = prime * result + ((origin == null) ? 0 : origin.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Flight other = (Flight) obj;
		if (arrival == null) {
			if (other.arrival != null)
				return false;
		} else if (!arrival.equals(other.arrival))
			return false;
		if (departure == null) {
			if (other.departure != null)
				return false;
		} else if (!departure.equals(other.departure))
			return false;
		if (destination == null) {
			if (other.destination != null)
				return false;
		} else if (!destination.equals(other.destination))
			return false;
		if (distance != other.distance)
			return false;
		if (emptySeats != other.emptySeats)
			return false;
		if (flightNumber != other.flightNumber)
			return false;
		if (numberOfSeats != other.numberOfSeats)
			return false;
		if (origin == null) {
			if (other.origin != null)
				return false;
		} else if (!origin.equals(other.origin))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return this.getClass().getSimpleName() + " [flightNumber=" + flightNumber + ", origin=" + origin + ", destination=" + destination
				+ ", departure=" + departure + ", arrival=" + arrival + ", numberOfSeats=" + numberOfSeats
				+ ", emptySeats=" + emptySeats + ", distance=" + distance + "]";
	}
	
}
