package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.AdminDao;
import com.lyxm.lychengdu.model.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
}