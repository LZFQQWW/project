package pers.jing.dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import pers.jing.dao.UserDao;
import pers.jing.entity.User;
import pers.jing.utils.DataSourceUtils;

public class UserDaoImpl implements UserDao {

	@Override
	public int register(User user) throws SQLException {
		// TODO Auto-generated method stub
		// SQL注入——占位符
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?)";
		Object[] params = { user.getUid(), user.getUsername(), user.getPassword(), user.getName(), user.getEmail(),
				user.getTelephone(), user.getBirthday(), user.getSex(), user.getState(), user.getCode() };
		int row = 0;
		row = qr.update(sql, params);
		return row;
	}

	@Override
	public void active(String code) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "update user set state = 1 where code = ?";
		qr.update(sql, code);
	}

	@Override
	public Long checkUsername(String username) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from user where username = ?";
		Long count = (Long) qr.query(sql, new ScalarHandler(), username);
		return count;
	}

}
