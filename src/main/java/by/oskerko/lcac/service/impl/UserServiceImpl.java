package by.oskerko.lcac.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.oskerko.lcac.bean.LoginData;
import by.oskerko.lcac.bean.Report;
import by.oskerko.lcac.bean.User;
import by.oskerko.lcac.dao.DaoException;
import by.oskerko.lcac.dao.UserDao;
import by.oskerko.lcac.service.ServiceException;
import by.oskerko.lcac.service.UserService;
import by.oskerko.lcac.service.validation.DataValidator;

@Service
public class UserServiceImpl implements UserService {

	private static final DataValidator validator = DataValidator.getInstance();
	/*
	 * private static final DaoProvider daoProvider = DaoProvider.getInstance();
	 */	
	private UserDao userDao;

	public UserServiceImpl() {
	}
	
	@Autowired
	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public User logination(LoginData loginData) throws ServiceException {
		if (!validator.checkUser(loginData)) {
			throw new ServiceException("пока так: данные невалидны (это в константы не выносят)");
		} else {
			User user = null;
			try {
				System.out.println("UserServiceImpl 11111");
				user = userDao.logination(loginData);
			} catch (DaoException e) {
				throw new ServiceException(e);
			}
			return user;
		}
	}

	
	/*
	 * @Override public User registration(String login, String password, String
	 * name, String surname, String email) throws ServiceException {
	 * 
	 * User user = null; if (!validator.checkRegistration(login, password, name,
	 * surname, email)) { throw new
	 * ServiceException("пока так: данные невалидны (это в константы не выносят)");
	 * } else {
	 * 
	 * UserDao userDao = daoProvider.getUserDao(); try { user =
	 * userDao.registration(login, password, name, surname, email); } catch
	 * (DaoException e) { System.out.println("пока так: userServImpl registration");
	 * throw new ServiceException(e); } }
	 * 
	 * return user; }
	 * 
	 * @Override public User editUserProfile(int id, String name, String surname,
	 * String email) throws ServiceException {
	 * 
	 * User user = null; boolean isEdited = false;
	 * 
	 * if (!validator.checkEditUserProfile(name, surname, email)) { throw new
	 * ServiceException("пока так: данные невалидны (это в константы не выносят)");
	 * 
	 * } else { UserDao userDao = DaoProvider.getInstance().getUserDao(); try {
	 * isEdited = userDao.editUserProfile(id, name, surname, email); if (isEdited ==
	 * true) { user = userDao.getUser(id); } } catch (DaoException e) { throw new
	 * ServiceException(e); } } return user; }
	 * 
	 * @Override public List<Report> getReportList(int id) throws ServiceException {
	 * 
	 * Set<Report> reportSet = null; List<Report> reportList = new ArrayList<>();
	 * UserDao userDao = DaoProvider.getInstance().getUserDao(); try { reportSet =
	 * userDao.getReportList(id); } catch (DaoException e) { throw new
	 * ServiceException(e); } reportList.addAll(reportSet); return reportList; }
	 * 
	 * @Override public boolean changePassword(int id, String password, String
	 * newPassword) throws ServiceException {
	 * 
	 * boolean isEdited = false;
	 * 
	 * if (!validator.checkPassword(password, newPassword)) { throw new
	 * ServiceException("пока так: данные невалидны (это в константы не выносят)");
	 * 
	 * } else { UserDao userDao = DaoProvider.getInstance().getUserDao(); try {
	 * userDao.changePassword(id, password, newPassword); isEdited = true; } catch
	 * (DaoException e) { throw new ServiceException(e); } } return isEdited; }
	 */
}
