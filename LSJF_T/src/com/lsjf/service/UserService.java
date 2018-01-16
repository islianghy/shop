package com.lsjf.service;

import java.util.List;

import com.lsjf.model.User;

public interface UserService {
	String createuser(User record);

	User selectByName(String user);

	List<User> getAll();

	String delete(Integer id);

	String updateById(String user, String password);

	int updateMgById(Integer id, String phone, String mail);

	int countuser();

	
}
