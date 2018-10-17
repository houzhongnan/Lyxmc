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

public class AdminManageController {
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
        return "backstage/adminManage/adminmanage.jsp";
    }

    /*
     * 添加管理员
     */

    @RequestMapping(value = "/doAdminadd",method = RequestMethod.POST)

    public String doAdminadd(String a_username,String a_name,String a_password,HttpServletRequest request){

        if(a_username.equals("")){
            request.setAttribute("mymessage", "添加失败：账户名不可以为空");
        }else if(a_name.equals("")){
            request.setAttribute("mymessage", "添加失败：网名不可以为空");
        }else if(adminService.exitAdmin(a_username)){
            request.setAttribute("mymessage", "添加失败：账户名重复，请修改账户名！");
        }else{
            System.out.println(adminService.exitAdmin("user"+11));
          adminService.addAdmin(a_username,a_name,a_password);
            request.setAttribute("mymessage", "添加成功：");
        }
        return "backstage/adminManage/adminadd.jsp";
    }

    @RequestMapping(value = "/toAdminadd",method = RequestMethod.GET)
    public String toCustomeradd(){
        return "backstage/adminManage/adminadd.jsp";
    }


}
