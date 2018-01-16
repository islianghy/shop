package com.lsjf.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.lsjf.dao.UserMapper;
import com.lsjf.model.User;
import com.lsjf.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	
	public UserMapper getUserMapper() {
		return userMapper;
	}

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public String createuser(User record) {
		// TODO Auto-generated method stub
		
			if (userMapper.insert(record) == 1) {
				return "更新成功";
			}
			return "更新失败";
		
	}

	@Override
	public User selectByName(String user) {
		// TODO Auto-generated method stub
		
			return userMapper.selectByName(user);
		
	}

	
	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return userMapper.getAll();
	}
	public String delete(Integer id) {
		// TODO Auto-generated method stub
		if(userMapper.deleteByPrimaryKey(id)==1){
			return "成功";
		}else {
			return "失败";
		}
	}

	@Override
	public String updateById(String user, String password) {
		// TODO Auto-generated method stub
		 
		if(userMapper.updateById(user,password)==1){
			return "成功";
		}else {
			return "失败";
		}
	}

	@Override
	public int updateMgById(Integer id, String phone, String mail) {
		// TODO Auto-generated method stub
		return userMapper.updateMgById(id,phone,mail);
	}

	@Override
	public int countuser() {
		// TODO Auto-generated method stub
		return userMapper.countuser();
	}
}
