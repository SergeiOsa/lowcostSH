package by.oskerko.lcac.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import by.oskerko.lcac.bean.CityData;
import by.oskerko.lcac.bean.LocalizationData;
import by.oskerko.lcac.bean.LoginData;

@Controller
public class LocalizationCommand {

	@RequestMapping("/localization")
	public String localization(HttpServletRequest request, HttpSession session, Model theModel) {
		String local;
		String path;

		local = request.getParameter("local");
		path = request.getParameter("path");


		if (path.equalsIgnoreCase("logination")) {
			LoginData loginData = new LoginData();
			theModel.addAttribute("loginData", loginData);
		}

		if (path.equalsIgnoreCase("index")) {
			CityData cityData = new CityData();
			theModel.addAttribute("cityData", cityData);
		}

		session.setAttribute("local", local);

		LocalizationData locData = new LocalizationData(local, path);
		theModel.addAttribute("locData", locData);


		return path;
	}

}
