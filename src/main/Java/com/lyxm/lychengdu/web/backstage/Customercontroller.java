package com.lyxm.lychengdu.web.backstage;

import com.lyxm.lychengdu.model.Customer;
import com.lyxm.lychengdu.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class Customercontroller {
    @Resource
    private CustomerService customerService;
    /*跳转到游客列表页面*/
    @RequestMapping(value = "/toCustomer",method = RequestMethod.GET)
    public String toCustomer(HttpServletRequest request, HttpSession session){
        List<Customer> customerList=customerService.getCustomers();
        request.setAttribute("list",customerList);
        return "backstage/customer/customermanage.jsp";
    }


    /*
    * 添加客户
    * */
    @RequestMapping(value = "/doCustomeradd",method = RequestMethod.POST)

    public String doCustomeradd(String c_user,String c_name,HttpServletRequest request){
        if(c_user.equals("")){
            request.setAttribute("mymessage", "编辑失败：账户名不可以为空");
        }else if(c_name.equals("")){
            request.setAttribute("mymessage", "编辑失败：网名不可以为空");
        }else if(customerService.eixtsCustomer(c_user)){
            request.setAttribute("mymessage", "编辑失败：账户名重复，请修改账户名！");
        }else{
            System.out.println("212121212");
            System.out.println(customerService.eixtsCustomer("c_user"+11));
            customerService.addCustomer(c_user,c_name);
            request.setAttribute("mymessage", "编辑成功：");
        }
        return "backstage/customer/customeradd.jsp";
    }

   @RequestMapping(value = "/toCustomeradd",method = RequestMethod.GET)
    public String toCustomeradd(){
        return "backstage/customer/customeradd.jsp";
    }
}
