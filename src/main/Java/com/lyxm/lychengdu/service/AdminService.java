package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.AdminDao;
import com.lyxm.lychengdu.model.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.List;

@Service
public class AdminService {
    @Resource
    private AdminDao adminDao;
/*
*登录
* @return true表示登录成功
* @return表示登录失败
 */
    public Admin login(String a_username,String a_password){
       return adminDao.login(a_username, a_password);

    }
/**
 * 添加管理员
 */
    public  void addAdmin(String a_username,String a_name,String a_password){
        Admin admin=new Admin();
        admin.setA_username(a_username);
        admin.setA_name(a_name);
        admin.setA_password(a_password);
        admin.setA_image(" a_image");
       admin.setA_createTime(Calendar.getInstance().getTime());
       adminDao.addAdmin(admin);

    }
    /*判断账户名是否在数据库存在*/
    public Boolean exitAdmin(String a_username){
        Boolean status=false;
        int count=adminDao.existAdmin(a_username);
        if(count>0){
            status=true;
        }
        return  status;
    }
    /*
     * 从数据库的admin表中查找出所有记录（及所有字段）
     * @return
     */
    public List<Admin> getAdmins(){
        return adminDao.getAdmins();
    }


    /*
     * 根据主键获取对应记录的值
     * @param id 主键
     * @return null表示没有获取到记录
     */
    public Admin getAdmin(Integer id){
        return adminDao.getAdmin(id);
    }

    public void deleteAdmin(Integer adminId) {
        adminDao.deleteAdmin(adminId);
    }

}