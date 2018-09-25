package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.AdminDao;
import com.lyxm.lychengdu.model.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminService {
    @Resource
    private AdminDao adminDao;

    public boolean login(String username,String password){
        Admin admin=adminDao.login(username, password);
        if(admin!=null){
           return true;
        }else{
            return false;
        }
    }


}
