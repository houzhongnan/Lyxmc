package com.lyxm.lychengdu.dao;

import com.lyxm.lychengdu.model.Admin;

import org.apache.ibatis.annotations.Param;

import java.util.List;


/*
 * 该接口用来与mybatis的对应映射文件对接
 */
public interface AdminDao {
	/*
	 * 处理数据库的登录方法
	 * @return null表示登录失败
	 */
	Admin login(@Param(value = "a_username") String a_username, @Param(value = "a_password") String a_password);

	/*
	 * 根据主键获取对应记录的值
	 * @param id 主键
	 * @return null表示没有获取到记录
	 */
	Admin getAdmin(Integer id);

	/*
	 * 查询管理账户表的所有记录
	 */
	List<Admin> getAdmins();

}

