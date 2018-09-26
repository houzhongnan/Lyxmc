package dao;

import com.lyxm.lychengdu.dao.AdminDao;
import com.lyxm.lychengdu.model.Admin;
import com.lyxm.lychengdu.test.SpringJunitTest;
import org.junit.Test;

import javax.annotation.Resource;

public class AdminDaoTest extends SpringJunitTest {
    @Resource
    private AdminDao adminDao;
    /*
    对login方法进行测试
     */
    @Test
    public void loginTest(){
        Admin admin=adminDao.login("user","123456");
        //System.out.println(admin.getName());
    }
}
