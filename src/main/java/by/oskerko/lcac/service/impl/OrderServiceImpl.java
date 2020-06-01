package by.oskerko.lcac.service.impl;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.oskerko.lcac.bean.Flight;
import by.oskerko.lcac.bean.PreOrder;
import by.oskerko.lcac.dao.DaoException;
import by.oskerko.lcac.dao.OrderDao;
import by.oskerko.lcac.service.OrderService;
import by.oskerko.lcac.service.ServiceException;
import by.oskerko.lcac.service.validation.DataValidator;

@Service
public class OrderServiceImpl implements OrderService {

	private static final DataValidator validator = DataValidator.getInstance();

	private OrderDao orderDao;

	public OrderServiceImpl() {
	}

	@Autowired
	public OrderServiceImpl(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public Set<PreOrder> search(String origin, String destination, String strDeparture) throws ServiceException {
		if (!validator.checkFlight(origin, destination, strDeparture)) {
			throw new ServiceException("пока так: данные невалидны (это в константы не выносят)");
		} else {
			List<Flight> flightsList = null;
			try {
				flightsList = orderDao.search(origin, destination, strDeparture);
			} catch (DaoException e) {
				System.out.println("пока так: OrderService search");
				throw new ServiceException(e);
			}

			PriceSetter priceSetter = new PriceSetter();

			/*
			 * раньше здесь метод заканчивался раньше метод возвращал Set<Flight> и было так
			 * всё что после коммента новая вариация. flightsSet.addAll(flightsList);
			 */

			Set<PreOrder> preOrdersSet;
			preOrdersSet = priceSetter.setPrice(flightsList);

			return preOrdersSet;
		}
	}

	@Override
	public PreOrder chooseFlight(int flightNumber, BigDecimal price) throws ServiceException {
		PreOrder preOrder = null;
		if (!validator.chooseFlight(flightNumber, price)) {
			throw new ServiceException("пока так: данные невалидны (это в константы не выносят)");
		} else {
			try {
				preOrder = orderDao.chooseFlight(flightNumber, price);
			} catch (DaoException e) {
				throw new ServiceException(e);
			}
		}
		return preOrder;
	}

	/*
	 * @Override public Ticket bookingStep1(int clientId, int flightNumber,
	 * BigDecimal price, String priorityRegistration, String isBaggage) {
	 * 
	 * PriceSetterPlus psp = new PriceSetterPlus(); BigDecimal totalPrice =
	 * psp.plusPrice(price, priorityRegistration, isBaggage);
	 * 
	 * String booked = "No"; String paid = "No";
	 * 
	 * Ticket ticket = null;
	 * 
	 * ticket = new Ticket(flightNumber, totalPrice, booked, paid,
	 * priorityRegistration, isBaggage);
	 * 
	 * return ticket; }
	 */

	/*
	 * @Override public Ticket bookingStep2(Ticket ticket, String name, String
	 * surname, String passport) {
	 * 
	 * ticket.setName(name); ticket.setSurname(surname);
	 * ticket.setPassport(passport);
	 * 
	 * return ticket; }
	 * 
	 * @Override public Flight getFlight(int flightNumber) throws ServiceException {
	 * 
	 * Flight flight;
	 * 
	 * OrderDao orderDao = DaoProvider.getInstance().getOrderDao(); try { flight =
	 * orderDao.getFlight(flightNumber); } catch (DaoException e) { throw new
	 * ServiceException(e); }
	 * 
	 * return flight; }
	 * 
	 * @Override public Order booking(Ticket ticket, int clientId) throws
	 * ServiceException {
	 * 
	 * Order order = null; Baggage baggage = null; Flight flight = null; int
	 * flightNumber; int orderId = 0; String isBooked = "Yes";
	 * 
	 * flightNumber = ticket.getFlightNumber();
	 * 
	 * OrderDao orderDao = DaoProvider.getInstance().getOrderDao();
	 * 
	 * try { if (ticket.getIsBaggage().equalsIgnoreCase("Yes")) { baggage =
	 * orderDao.createBaggage(); ticket.setBaggageId(baggage.getBaggageId()); }
	 * flight = orderDao.getFlight(flightNumber); order =
	 * orderDao.createOrder(clientId); orderId = order.getOrderId();
	 * ticket.setOrderId(orderId); ticket.setBooked(isBooked); ticket =
	 * orderDao.createTicket(ticket, flight); } catch (DaoException e) { throw new
	 * ServiceException(e); }
	 * 
	 * return order; }
	 * 
	 * @Override public boolean payment(BigDecimal price, int clientId, Ticket
	 * ticket) throws ServiceException {
	 * 
	 * BigDecimal userBalance;
	 * 
	 * OrderDao orderDao = DaoProvider.getInstance().getOrderDao(); try {
	 * userBalance = orderDao.getUserBalance(clientId); } catch (DaoException e) {
	 * throw new ServiceException(e); }
	 * 
	 * if(userBalance.compareTo(price) >= 0) { try { orderDao.ticketPayment(price,
	 * clientId, ticket); } catch (DaoException e) { throw new ServiceException(e);
	 * } return true; }
	 * 
	 * return false; }
	 */
}
