package com.baidu.entity;

public class Power {

	private Integer id;
	
	private Integer pId;
	
	private String name;
	
	private String url;
	
	private String target;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public Power(Integer id, Integer pId, String name, String url, String target) {
		this.id = id;
		this.pId = pId;
		this.name = name;
		this.url = url;
		this.target = target;
	}

	public Power() {

	}
}
