package dao;

import com.lyxm.lychengdu.dao.AdminDao;
import com.lyxm.lychengdu.dao.CustomerDao;
import com.lyxm.lychengdu.model.Admin;
import com.lyxm.lychengdu.model.Customer;
import com.lyxm.lychengdu.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class AdminDaoTest extends SpringJunitTest {
    @Resource
    private CustomerDao customerDao;
    @Resource
    private AdminDao adminDao;
    /*
    对login方法进行测试
     */
    @Test
    public void loginTest(){
        Customer customer=customerDao.login("user","123456");
        System.out.println(customer.getC_name());
    }
    /*后台登录login尝试*/
    @Test
    public void loginTest1(){
        Admin admin=adminDao.login("user","123456");
        System.out.println(admin.getA_name());
    }

    /*获取数据库测试*/
    @Test
    public  void adminmanageTest(){
      // List<Admin> adminList=adminDao.getAdmins();
       System.out.print(adminDao.getAdmin(1).getA_createTime());
    }

    @Test
    public void  customerTest(){
        System.out.println(customerDao.getCustomer(1).getC_name());
    }
    /*管理员添加测试*/
    @Test
    public  void addAdmintest(){
        Admin admin=new Admin();
        System.out.print(adminDao.addAdmin(admin));
    }

    @Test
    public  void addCustomertest(){
        Customer customer=new Customer();
        System.out.print(customerDao.addCustomer(customer));
    }
}
