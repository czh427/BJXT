package com.baidu.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.baidu.dao.UserDao;
import com.baidu.entity.Power;
import com.baidu.mapper.UserMapper;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private UserMapper mapper;
	
	public List<Power> getPowerList() {
		return mapper.getPowerList();
	}
	
	@Override
	public List<Power> getPowerByRid(Integer rid) {
		return mapper.getPowerByRid(rid);
	}
	
}
