package com.baidu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baidu.entity.Power;

public interface UserMapper {

	List<Power> getPowerList();

	List<Power> getPowerByRid(@Param("rid")Integer rid);

}
