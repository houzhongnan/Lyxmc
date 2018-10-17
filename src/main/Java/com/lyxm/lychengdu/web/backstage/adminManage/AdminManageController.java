package com.lyxm.lychengdu.web.backstage.adminManage;

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

    @RequestMapping(value="/backstage/adminManage/toUpdateAdmin",method = RequestMethod.GET)
    public String toUpdateAdmin(Integer id ,HttpServletRequest request){
        Admin admin=adminService.getAdmin(id);
        request.setAttribute("admin", admin);
        return "backstage/adminManage/adminupdate.jsp";
    }

    @ResponseBody
    @RequestMapping(value="/backstage/adminManage/DoUpdateAdmin",method=RequestMethod.POST)
    public String DoUpdateAdmin(Admin admin,HttpServletRequest request) {
                String i;
                i = "ok";
                adminService.updateAdmin(admin);
                return i;
        }

    @ResponseBody
    @RequestMapping(value="/backstage/adminManage/DoUpdateAdminpassword",method=RequestMethod.POST)
    public String DoUpdateAdminpassword(Admin admin,HttpServletRequest request,HttpSession session,String newPass,String oldPass,String conPass) {
        String i;
        i = "ok";

         admin=(Admin) session.getAttribute("admin");
        if(adminService.login(admin.getA_username(), oldPass)!=null){
            if(newPass.equals(conPass)){
                adminService.updatePassword(admin.getId(), newPass);
            }else{
                i="no";
                request.setAttribute("mesg", "密码修改失败：新密码和确认密码不一致");
            }
        }else{
            i="no";
            request.setAttribute("mesg", "原密码错误");
        }
        return i;
    }






}
