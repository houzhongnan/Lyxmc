package com.lyxm.lychengdu.model;

import java.util.Date;
public class Food {
	private Integer id;
	private String f_name;
	private String f_image;
	private String f_position;
	private Date f_createTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_image() {
		return f_image;
	}
	public void setF_image(String f_image) {
		this.f_image = f_image;
	}
	public String getF_position() {
		return f_position;
	}
	public void setF_position(String f_position) {
		this.f_position = f_position;
	}
	public Date getF_createTime() {
		return f_createTime;
	}
	public void setF_createTime(Date f_createTime) {
		this.f_createTime = f_createTime;
	}
	
	
}
