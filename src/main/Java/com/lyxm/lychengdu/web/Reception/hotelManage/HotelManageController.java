package com.lyxm.lychengdu.web.Reception.hotelManage;

import com.lyxm.lychengdu.model.Hotel;
import com.lyxm.lychengdu.service.HotelService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
@Controller
public class HotelManageController {

    @Resource
    private HotelService hotelService;

    @RequestMapping(value="/Reception/hotelManage/toManageHotel",method = RequestMethod.GET)
    public String toManageHotel(HttpServletRequest request, HttpSession session){
        List<Hotel> hotelList=hotelService.getHotels();
        List<Hotel>  hotelList2 = new ArrayList<>();
        for (int i = 0; i < 8; i++) {
            Hotel hotel=new Hotel();
            hotel = hotelList.get(i);
            hotelList2.add(hotel);
        }
        request.setAttribute("list", hotelList2);

        List<Hotel>  hotelList3 = new ArrayList<>();
        for (int i = 8; i < 16; i++) {
            Hotel hotel=new Hotel();
            hotel = hotelList.get(i);
            hotelList3.add(hotel);
        }
        request.setAttribute("list2", hotelList3);

        List<Hotel>  hotelList4 = new ArrayList<>();
        for (int i = 16; i < 20; i++) {
            Hotel hotel=new Hotel();
            hotel = hotelList.get(i);
            hotelList4.add(hotel);
        }
        request.setAttribute("list3", hotelList4);
        return "Reception/hotel/hotel.jsp";
    }
}
