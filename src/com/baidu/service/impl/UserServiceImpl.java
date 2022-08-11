package com.baidu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baidu.dao.UserDao;
import com.baidu.entity.Power;
import com.baidu.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;
	
	@Override
	public List<Power> getPowerList() {
		return dao.getPowerList();
	}
	
	@Override
	public List<Power> getPowerByRid(Integer rid) {
		return dao.getPowerByRid(rid);
	}
}
