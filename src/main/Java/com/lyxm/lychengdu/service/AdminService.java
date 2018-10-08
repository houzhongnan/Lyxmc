package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.AdminDao;
import com.lyxm.lychengdu.model.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

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


}
