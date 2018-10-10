package com.lyxm.lychengdu.web.Reception.strategyManage;

import com.lyxm.lychengdu.model.Strategy;
import com.lyxm.lychengdu.service.StrategyService;
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

    @RequestMapping(value="/Reception/strategyManage/toManageStrategy",method = RequestMethod.GET)
    public String toManageStrategy(HttpServletRequest request, HttpSession session){
        List<Strategy> strategyList=strategyService.getStrategys();
        List<Strategy> strategyList2=new ArrayList<>();
        int j=0;
        int k=3;
        for(int i=j;i<k;i++){
            Strategy strategy = new Strategy();
            strategy=strategyList.get(i);
            strategyList2.add(strategy);
        }
        request.setAttribute("list", strategyList2);

        int n=3;
        int m=7;
        List<Strategy> strategyList3=new ArrayList<>();
        for(int l=n;l<m;l++){
            Strategy strategy = new Strategy();
            strategy=strategyList.get(l);
            strategyList3.add(strategy);
        }
        request.setAttribute("list2", strategyList3);

        return "Reception/index.jsp";
    }
}
