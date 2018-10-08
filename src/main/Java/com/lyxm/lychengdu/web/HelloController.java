package com.lyxm.lychengdu.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {


	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/Reception/index")
	public String hello(){
		return "/Reception/index.jsp";
	}

}
