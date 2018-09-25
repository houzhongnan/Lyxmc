package com.lyxm.lychengdu.web.Reception;


import com.lyxm.lychengdu.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/Reception")
public class LoginController {

	@Resource
	private AdminService adminService;


	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/login")
	public String login(String username,String password){
		if(adminService.login(username, password)){
			return "/Reception/loginsuccess.jsp";
		}else{
			return "/Reception/loginerror.jsp";
		}

	}

}
