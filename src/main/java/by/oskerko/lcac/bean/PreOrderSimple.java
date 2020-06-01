package by.oskerko.lcac.bean;

import java.io.Serializable;
import java.math.BigDecimal;

public class PreOrderSimple implements Serializable {

	private static final long serialVersionUID = 6790743391183110440L;

	private int flightNumber;
	private BigDecimal price;
	
	public PreOrderSimple() {}
	
	public PreOrderSimple(int flightNumber, BigDecimal price) {
		this.flightNumber = flightNumber;
		this.price = price;
	}

	public int getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(int flightNumber) {
		this.flightNumber = flightNumber;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + flightNumber;
		result = prime * result + ((price == null) ? 0 : price.hashCode());
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
		PreOrderSimple other = (PreOrderSimple) obj;
		if (flightNumber != other.flightNumber)
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PreOrderSimple [flightNumber=" + flightNumber + ", price=" + price + "]";
	}
	
}
