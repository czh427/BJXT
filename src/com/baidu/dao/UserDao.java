package com.baidu.dao;

import java.util.List;

import com.baidu.entity.Power;

public interface UserDao {

	List<Power> getPowerList();

	List<Power> getPowerByRid(Integer rid);

}
