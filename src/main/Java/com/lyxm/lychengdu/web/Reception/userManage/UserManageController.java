package com.lyxm.lychengdu.web.Reception.userManage;

import com.lyxm.lychengdu.model.User;
import com.lyxm.lychengdu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserManageController {
    @Resource
    private UserService userService;

    @RequestMapping(value="/Reception/userManage/toAddUser",method = RequestMethod.GET)
    public String toAddUser(){
        return "/jsp/Reception/index.jsp";
    }

    @ResponseBody
    @RequestMapping(value="/Reception/userManage/DoAddUser",method = RequestMethod.POST)
    public Map<String,Object> DoAddUser(User user, HttpServletRequest request){
        Map<String,Object> map=new HashMap<String,Object>();//定义一个map集合
        userService.addUser(user);
            map.put("status", 1);

        return map;
    }
}
