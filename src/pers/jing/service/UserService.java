package pers.jing.service;

import pers.jing.entity.User;

public interface UserService {
	public boolean register(User user);

	public void active(String code);

	public boolean checkUsername(String username);
}
