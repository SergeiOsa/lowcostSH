package by.oskerko.lcac.command.gotocommand;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import by.oskerko.lcac.bean.CityData;

@Controller
public class GoToCommand {

	@RequestMapping("/index")
	public String goToIndex(Model theModel) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		CityData cityData = context.getBean("cityData", CityData.class);
		theModel.addAttribute("cityData", cityData);
		return "index";
	}
	
	@RequestMapping("/auth_user")
	public String goToAuthUser() {
		return "auth_user";
	}
	
	@RequestMapping("/contact")
	public String goToContact() {
		return "contact";
	}
	
	@RequestMapping("/about")
	public String goToAbout() {
		return "about";
	}
}
