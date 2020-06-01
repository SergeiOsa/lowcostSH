package by.oskerko.lcac.command;

import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import by.oskerko.lcac.bean.LoginData;
import by.oskerko.lcac.bean.User;
import by.oskerko.lcac.service.ServiceException;
import by.oskerko.lcac.service.UserService;

@Controller
@RequestMapping("/")
public class LoginationCommand {

	@RequestMapping("/goToLogination")
	public String goToLogination(Model theModel) {

		LoginData loginData = new LoginData();
		theModel.addAttribute("loginData", loginData);

		return "logination";
	}

	@RequestMapping(value = "/logination", method = RequestMethod.POST)
	public String logination(LoginData loginData, HttpSession session, Model theModel) throws ServiceException {

		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml");
		String goTo = null;
		UserService userService = context.getBean("userServiceImpl", UserService.class);
		User user = userService.logination(loginData);
		session.setAttribute("user", user);
		context.close();

		if (null != user) {
			goTo = "auth_user";
		} else {
			goTo = "logination";
			session.setAttribute("loginErrorMessege", "Incorrect login or password");
			theModel.addAttribute("loginData", loginData);
		}

		return goTo;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}

}
