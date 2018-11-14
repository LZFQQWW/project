package pers.jing.service.impl;

import java.sql.SQLException;

import pers.jing.dao.UserDao;
import pers.jing.dao.impl.UserDaoImpl;
import pers.jing.entity.User;
import pers.jing.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao userDao = new UserDaoImpl();

	@Override
	public boolean register(User user) {
		// TODO Auto-generated method stub
		int row = 0;
		try {
			row = userDao.register(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row > 0 ? true : false;
	}

	@Override
	public void active(String code) {
		// TODO Auto-generated method stub
		try {
			userDao.active(code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public boolean checkUsername(String username) {
		// TODO Auto-generated method stub
		Long count = 0L;
		try {
			count = userDao.checkUsername(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count > 0 ? true : false;
	}

}
