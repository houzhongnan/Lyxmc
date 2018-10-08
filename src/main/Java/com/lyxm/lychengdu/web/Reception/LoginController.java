package com.lyxm.lychengdu.web.Reception;


import com.lyxm.lychengdu.model.Admin;
import com.lyxm.lychengdu.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/Reception")
public class LoginController {

	@Resource
	private AdminService adminService;


	/*
	 * 处理登录页面
	 */

	//@ResponseBody表示用json格式返回数据
	@ResponseBody
	@RequestMapping(value = "/jsp/Reception/login")
	public Map<String,Integer> login(String a_username, String a_password, HttpSession session){
		Map<String,Integer> map=new HashMap<String,Integer>();//定义一个map集合
		Admin admin=adminService.login(a_username,a_password);
		if(admin!=null){//如果对象不为null,表示登录成功
			session.setAttribute("admin", admin);
			map.put("status", 1);
			//return "redirect:/Reception/index";
		}else{//如果登录失败
			map.put("status", -1);
			//return "/jsp/Reception/login.jsp";
		}
		return map;
	}
	/*
	 *
	 * 处理注销请求
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("admin");
		return "/Reception/login.jsp";
	}

	/*
	 *
	 * 跳转到首页
	 */
	@RequestMapping(value = "/Reception/index", method = RequestMethod.GET)
	public String index(){
		return "/jsp/Reception/index.jsp";
	}
	/*@RequestMapping(value = "/login")
	public String login(String a_username,String a_password){
		if(adminService.login(a_username,a_username)){
			return "/Reception/loginsuccess.jsp";
		}else{
			return "/Reception/loginerror.jsp";
		}

	}*/

}
