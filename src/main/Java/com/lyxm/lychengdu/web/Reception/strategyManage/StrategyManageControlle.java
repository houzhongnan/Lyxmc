package com.lyxm.lychengdu.web.Reception.strategyManage;

import com.lyxm.lychengdu.model.Strategy;
import com.lyxm.lychengdu.service.StrategyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class StrategyManageControlle {
    @Resource
    private StrategyService strategyService;

    @RequestMapping(value="/Reception/strategyManage/toManageStrategy",method = RequestMethod.GET)
    public String toManageStrategy(HttpServletRequest request, HttpSession session){
        List<Strategy> strategyList=strategyService.getStrategys();
        request.setAttribute("list", strategyList);

        return "Reception/index.jsp";
    }
}
