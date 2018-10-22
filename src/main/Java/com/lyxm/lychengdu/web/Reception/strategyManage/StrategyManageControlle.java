package com.lyxm.lychengdu.web.Reception.strategyManage;

import com.lyxm.lychengdu.model.Food;
import com.lyxm.lychengdu.model.Hot;
import com.lyxm.lychengdu.model.Strategy;
import com.lyxm.lychengdu.model.Test;
import com.lyxm.lychengdu.service.FoodService;
import com.lyxm.lychengdu.service.HotService;
import com.lyxm.lychengdu.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class StrategyManageControlle {
    @Resource
    private StrategyService strategyService;

    @Resource
    private FoodService foodService;

    @Resource
    private HotService hotService;

    @Resource
    private TestService testService;

    @RequestMapping(value = "/Reception/strategyManage/toManageStrategy", method = RequestMethod.GET)
    public String toManageStrategy(HttpServletRequest request, HttpSession session, Integer index) {
        List<Strategy> strategyList = strategyService.getStrategys();
        List<Strategy> strategyList2 = new ArrayList<>();
        int j = 0;
        int k = 3;
        for (int i = j; i < k; i++) {
            Strategy strategy = new Strategy(s_image);
            strategy = strategyList.get(i);
            strategyList2.add(strategy);
        }
        request.setAttribute("list", strategyList2);


        List<Strategy> strategyList3 = new ArrayList<>();
        for (int i = 3; i < 7; i++) {
            Strategy strategy = new Strategy(s_image);
            strategy = strategyList.get(i);
            strategyList3.add(strategy);
        }
        request.setAttribute("list2", strategyList3);

        List<Food> foodList = foodService.getFoods();
        List<Food> foodList2 = new ArrayList<>();
        for (int i = 0; i < 6; i++) {
            Food food = new Food();
            food = foodList.get(i);
            foodList2.add(food);
        }
        request.setAttribute("list3", foodList2);





        List<Hot> hotList = hotService.getHots();
        List<Hot> hotList2= new ArrayList<>();

        int indexsize=3;  //当前页面最大数
        int pagecount=0;  //总页数
        int size=hotList.size();//数组最大长度
        pagecount=size/indexsize;//总页数

        if(size%indexsize!=0){
            pagecount=pagecount+1;
        }
        if(index==null){
            index=1;
        }
        if(index<1){
            index=1;
            request.setAttribute("mesg", "当前已经是第一页");
        }
        if(index>pagecount){
            index=pagecount;
            request.setAttribute("mesg", "当前已经是最后一页");
        }
        System.out.println(index);

        int start=index*indexsize-indexsize;
        int last=index*indexsize;
        if(index==pagecount){
            last=hotList.size();
        }

        for (int i=start;i<last;i++){
            Hot hot = new Hot();
            hot = hotList.get(i);
            hotList2.add(hot);
        }

        request.setAttribute("list4", hotList2);
        request.setAttribute("pagecount",pagecount);
        request.setAttribute("size",size);
        request.setAttribute("index",index);




        return "Reception/index.jsp";
    }

    @RequestMapping(value = "/Reception/strategyManage/test", method = RequestMethod.GET)
    public String test(HttpServletRequest request, HttpSession session,Integer index){
        List<Test> testList = testService.getTests();
        List<Test> testList2= new ArrayList<>();
        int indexsize=3;  //当前页面最大数
        int pagecount=0;  //总页数
        int size=testList.size();//数组最大长度

        pagecount=size/indexsize;//总页数

        if(size%indexsize!=0){
            pagecount=pagecount+1;
        }
        if(index==null){
            index=1;
        }

        System.out.println(index);

        int start=index*indexsize-indexsize;
        int last=index*indexsize;
        if(index==pagecount){
            last=testList.size();
        }

        for (int i=start;i<last;i++){
            Test test = new Test();
            test = testList.get(i);
            testList2.add(test);
        }


        request.setAttribute("list", testList2);
        request.setAttribute("pagecount",pagecount);
        request.setAttribute("size",size);
        request.setAttribute("index",index);
        return "test.jsp";
    }
}