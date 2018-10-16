package com.lyxm.lychengdu.dao;

import com.lyxm.lychengdu.model.Customer ;
import org.apache.ibatis.annotations.Param;


/*
 * 该接口用来与mybatis的对应映射文件对接
 */
public interface CustomerDao {
	/*
	前台登录
	 * 处理数据库的登录方法
	 * @return null表示登录失败
	 */
	Customer login(@Param(value = "c_name") String c_name, @Param(value = "c_pass") String c_pass);



}

