package by.oskerko.lcac.command;

import java.math.BigDecimal;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import by.oskerko.lcac.bean.Flight;
import by.oskerko.lcac.bean.PreOrder;
import by.oskerko.lcac.bean.PreOrderSimple;
import by.oskerko.lcac.service.OrderService;
import by.oskerko.lcac.service.ServiceException;

@Controller
public class OrderCommand {

	@RequestMapping("/chooseFlight")
	public String chooseFlight(@ModelAttribute PreOrderSimple preOrderSimple, Model theModel) {
		
		/*
		 * if (bindingResult.hasErrors()) { System.out.println("ERROR in chooseFlight");
		 * return "start"; // !!!! пока так обрати внимание!!!! }
		 */

		String goTo = "booking_step_1";

		int flightNumber = preOrderSimple.getFlightNumber();
		BigDecimal price = preOrderSimple.getPrice();
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		OrderService orderService = context.getBean("orderServiceImpl", OrderService.class);
		try {
			PreOrder preOrder = orderService.chooseFlight(flightNumber, price);
			theModel.addAttribute("preOrder", preOrder);
		} catch (ServiceException e) {
			context.close();
			goTo = "error_page";
			e.printStackTrace();
		}
		context.close();
		return goTo;
	}
}
