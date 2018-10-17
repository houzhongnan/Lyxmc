package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.CustomerDao;
import com.lyxm.lychengdu.model.Customer;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.List;

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

    public List<Customer> getCustomers(){
        return  customerDao.getCustomers();
    }
    /*
     * 查询数据库数据
     * */
    public  Customer getCustomer(Integer c_id){
        return  customerDao.getCustomer(c_id);
    }
    /*
     * 添加客户
     * */

    public void addCustomer(String c_user,String c_name){
        Customer customer=new Customer();
        customer.setC_user(c_user);
        customer.setC_name(c_name);
        customer.setC_pass("123456");
        customer.setC_sign("c_sign");
        customer.setC_years(Calendar.getInstance().getTime());
        customer.setC_time(Calendar.getInstance().getTime());
        customerDao.addCustomer(customer);
    }

    public Boolean eixtsCustomer(String c_user){
        Boolean status=false;
        int count=customerDao.exitsCustomer(c_user);
        if(count>0){
            status=true;
        }
        return status;
    }

    public void deleteCustomer(Integer c_id) {
        customerDao.deleteCustomer(c_id);
    }
    public void updateCustomer(Customer customer) {
      customerDao.updateCustomer(customer);

    }

}
