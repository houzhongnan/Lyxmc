package com.lyxm.lychengdu.web.Reception.trafficManage;

import com.lyxm.lychengdu.model.Traffic;
import com.lyxm.lychengdu.service.TrafficService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class trafficManageController {
    @Resource
    private TrafficService trafficService;

    @RequestMapping(value="/Reception/trafficManage/toManageTraffic",method = RequestMethod.GET)
    public String toManageTraffic(HttpServletRequest request, HttpSession session) {
        List<Traffic> trafficList = trafficService.getTraffics();
        List<Traffic> trafficList2 = new ArrayList<>();
        for (int i = 0; i < 6; i++) {
            Traffic traffic = new Traffic();
            traffic = trafficList.get(i);
            trafficList2.add(traffic);

        }
        request.setAttribute("list", trafficList2);

        List<Traffic> trafficList3 = new ArrayList<>();
        for (int i = 6; i < 10; i++) {
            Traffic traffic = new Traffic();
            traffic = trafficList.get(i);
            trafficList3.add(traffic);

        }
        request.setAttribute("list2", trafficList3);
        return "Reception/traffic/traffic.jsp";


    }
}
