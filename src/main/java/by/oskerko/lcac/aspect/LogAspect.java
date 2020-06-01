package by.oskerko.lcac.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import by.oskerko.lcac.bean.LoginData;

@Aspect
@Component
public class LogAspect {
	
	@Before("execution(* by.oskerko.lcac.command.LoginationCommand.logination(..))")
	public void beforeLogination(Model theModel) {

		System.out.println("я в БИФО!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		if (!theModel.containsAttribute("loginData")) {
			System.out.println("я в ИФЕ. нет логин даты в модели. создаю !!!!!!!!!!!!!!!!!!!!!!!!!!!!");
			LoginData loginData = new LoginData();
			theModel.addAttribute("loginData", loginData);
		}
	}
}
