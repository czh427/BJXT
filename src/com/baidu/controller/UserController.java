package com.baidu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.entity.Power;
import com.baidu.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	@RequestMapping("toMain")
	public String toMain(){
		return "main/main";
	}
	
	@RequestMapping("showTop")
	public String showTop(){
		return "main/top";
	}
	
	@RequestMapping("showLeft")
	public String showLeft(){
		return "main/left";
	}
	
	@RequestMapping("showRight")
	public String showRight(){
		return "main/right";
	}
	
	@RequestMapping("getPowerList")
	@ResponseBody
	public List<Power> getPowerList(){
		List<Power> list = service.getPowerList();
		return list;
	}
	
	@RequestMapping("allotPower")
	public String allotPower(){
		return "power/allotPower";
	}
	
	@RequestMapping("getPowerByRid")
	@ResponseBody
	public List<Power> getPowerByRid(Integer rid){
		List<Power> list = service.getPowerByRid(rid);
		return list;
	}
}
