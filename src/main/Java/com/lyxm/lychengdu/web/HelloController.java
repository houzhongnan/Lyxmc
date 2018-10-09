package com.lyxm.lychengdu.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {


	/*
	 * 跳转前台首页
	 */
	@RequestMapping(value = "/Reception/index")
	public String hello(){
		return "/Reception/index.jsp";
	}



	/*
	 * 跳转后台首页
	 */
	@RequestMapping(value = "/backstage/index")
	public String back(){
		return "/backstage/index.jsp";
	}

}