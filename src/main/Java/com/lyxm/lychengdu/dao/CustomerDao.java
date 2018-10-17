package com.lyxm.lychengdu.dao;

import com.lyxm.lychengdu.model.Customer ;
import org.apache.ibatis.annotations.Param;

import java.util.List;


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

	/*添加客户*/
	int addCustomer(Customer customer);

	int exitsCustomer(String c_name);

	/*
	 * 根据主键获取对应记录的值
	 * @param id 主键
	 * @return null表示没有获取到记录
	 */

	Customer getCustomer(Integer c_id);

	/*
	 * 查询管理账户表的所有记录
	 */
	List<Customer> getCustomers();

	int deleteCustomer(Integer c_id);

	int updateCustomer(Customer customer);


}

