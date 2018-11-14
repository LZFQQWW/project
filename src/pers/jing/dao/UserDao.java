package pers.jing.dao;

import java.sql.SQLException;

import pers.jing.entity.User;

public interface UserDao {
	public int register(User user) throws SQLException;

	public void active(String code) throws SQLException;

	public Long checkUsername(String username) throws SQLException;
}
