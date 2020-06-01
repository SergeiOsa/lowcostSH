package by.oskerko.lcac.command;

import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import by.oskerko.lcac.bean.CityData;
import by.oskerko.lcac.bean.Flight;
import by.oskerko.lcac.bean.PreOrder;
import by.oskerko.lcac.bean.PreOrderSimple;
import by.oskerko.lcac.service.OrderService;
import by.oskerko.lcac.service.ServiceException;

@Controller
public class SearchCommand {
	
	@RequestMapping("/search")
	public String search(CityData cityData, HttpServletRequest request, Model theModel) {
		
		String goTo = "found_flights";
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		OrderService orderService = context.getBean("orderServiceImpl", OrderService.class);
		
		//PreOrder preOrder = context.getBean("preOrder", PreOrder.class);
		PreOrderSimple preOrderSimple = new PreOrderSimple();
		theModel.addAttribute(preOrderSimple);
		
		Set<PreOrder> preOrdersSet = null;

		try {
			preOrdersSet = orderService.search(cityData.getOrigin(), cityData.getDestination(), cityData.getDeparture());

			request.setAttribute("preOrdersSet", preOrdersSet);

		} catch (ServiceException e) {
			context.close();
			goTo = "error_page";
			e.printStackTrace();
		}
		
		context.close();
		return goTo;
	}

}
