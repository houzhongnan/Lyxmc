package com.lyxm.lychengdu.web.backstage.adminManage;

import com.lyxm.lychengdu.model.Admin;
import com.lyxm.lychengdu.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class AdminManageController {
    @Resource
    private AdminService adminService;
    /*
     * 跳转到管理账户列表
     */
    //@ResponseBody表示用json格式返回数据
    @RequestMapping(value = "/backstage/adminManage/toManageAdmin",method = RequestMethod.GET)
    public String toAdminManage(HttpServletRequest request,HttpSession session){
        //首先从数据库获取管理账户表的所有记录
        List <Admin> adminList=adminService.getAdmins();
        request.setAttribute("list",adminList);
        return "backstage/adminManage/adminmanage.jsp";
    }

    @RequestMapping(value="/backstage/adminManage/doDeleteAdmin",method = RequestMethod.GET)
    public String doDeleteAdmin(Integer id ,HttpServletRequest request,HttpSession session){

            adminService.deleteAdmin(id);


        return "backstage/adminManage/admindelete.jsp";
    }
}
