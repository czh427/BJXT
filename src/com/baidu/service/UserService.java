package com.baidu.service;

import java.util.List;

import com.baidu.entity.Power;

public interface UserService {

	List<Power> getPowerList();

	List<Power> getPowerByRid(Integer rid);

}
