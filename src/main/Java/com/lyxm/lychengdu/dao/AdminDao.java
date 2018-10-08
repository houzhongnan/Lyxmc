package com.lyxm.lychengdu.dao;

import com.lyxm.lychengdu.model.Admin;

import org.apache.ibatis.annotations.Param;



/*
 * 该接口用来与mybatis的对应映射文件对接
 */
public interface AdminDao {
	/*
	 * 处理数据库的登录方法
	 * @return null表示登录失败
	 */
	Admin login(@Param(value = "a_username") String a_username, @Param(value = "a_password") String a_password);


}

