package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.CustomerDao;
import com.lyxm.lychengdu.model.Customer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class CustomerService {
    @Resource
    private CustomerDao customerDao;
/*
*登录
* @return true表示登录成功
* @return表示登录失败
 */
    public Customer login(String c_name,String c_pass){
       return customerDao.login(c_name,c_pass);

    }


}
