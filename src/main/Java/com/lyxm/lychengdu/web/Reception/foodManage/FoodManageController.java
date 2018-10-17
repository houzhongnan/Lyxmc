package com.lyxm.lychengdu.web.Reception.foodManage;

import com.lyxm.lychengdu.model.Food;
import com.lyxm.lychengdu.service.FoodService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FoodManageController {

    @Resource
    private FoodService foodService;

    @RequestMapping(value="/Reception/foodManage/toManageFood",method = RequestMethod.GET)
    public String toManageFood(HttpServletRequest request, HttpSession session){
        List<Food> foodList=foodService.getFoods();
        request.setAttribute("list", foodList);


        return "Reception/index.jsp";
    }
}
