package com.lyxm.lychengdu.web.Reception.destinationManage;

import com.lyxm.lychengdu.model.Destination;
import com.lyxm.lychengdu.service.DestinationService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class DestinationManageController {
    @Resource
    private DestinationService destinationService;

    @RequestMapping(value="/Reception/destinationManage/toManageDestination",method = RequestMethod.GET)
    public String toManageDestination(HttpServletRequest request, HttpSession session){
        List<Destination> destinationList=destinationService.getDestinations();
        List<Destination> destinationList2 = new ArrayList<>();
        for (int i = 0; i < 6; i++) {
            Destination destination = new Destination();
            destination = destinationList.get(i);
            destinationList2.add(destination);
        }
        request.setAttribute("list", destinationList2);

        List<Destination> destinationList3 = new ArrayList<>();
        for (int i = 6; i < 10; i++) {
            Destination destination = new Destination();
            destination = destinationList.get(i);
            destinationList3.add(destination);
        }
        request.setAttribute("list2", destinationList3);
        return "Reception/destination/destination.jsp";
    }

    @RequestMapping(value="/Reception/destinationManage/toManageDestination2",method = RequestMethod.GET)
    public String toManageDestination2(Integer id ,HttpServletRequest request){
        Destination destination=destinationService.getDestination(id);
        request.setAttribute("destination", destination);
        return "Reception/destination/destination_a.jsp";
    }

}
