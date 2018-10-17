package com.lyxm.lychengdu.dao;
import com.lyxm.lychengdu.model.User;

import org.apache.ibatis.annotations.Param;

public interface UserDao {
    int addUser(User user);

    /*后台登录*/


}
