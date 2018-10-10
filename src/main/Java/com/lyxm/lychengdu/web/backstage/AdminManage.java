package com.lyxm.lychengdu.web.backstage;

import com.lyxm.lychengdu.model.Admin;
import com.lyxm.lychengdu.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class AdminManage {
    @Resource
    private AdminService adminService;
    /*
     * 跳转到管理账户列表
     */
    //@ResponseBody表示用json格式返回数据
    @RequestMapping(value = "/toAdminmanage",method = RequestMethod.GET)
    public String toAdminManage(HttpServletRequest request,HttpSession session){
        //首先从数据库获取管理账户表的所有记录
        List <Admin> adminList=adminService.getAdmins();
        request.setAttribute("list",adminList);
        return "backstage/adminmanage.jsp";
    }
}
