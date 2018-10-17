package com.lyxm.lychengdu.service;
import com.lyxm.lychengdu.dao.UserDao;
import com.lyxm.lychengdu.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserDao userDao;
    //注册
    public void addUser(User user) {
        userDao.addUser(user);

    }
}
