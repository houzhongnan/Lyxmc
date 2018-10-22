package com.lyxm.lychengdu.web.Reception.mealManage;

import com.lyxm.lychengdu.model.Meal;
import com.lyxm.lychengdu.service.MealService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MealManageController {
    @Resource
    private MealService mealService;

    @RequestMapping(value = "/Reception/mealManage/toManageMeal", method = RequestMethod.GET)
    public String toManageMeal(HttpServletRequest request, HttpSession session, Integer index) {
        List<Meal> mealList = mealService.getMeals();
        List<Meal> mealList2 = new ArrayList<>();
        int j = 0;
        int k = 4;
        for (int i = j; i < k; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList2.add(meal);
        }
        request.setAttribute("list", mealList2);

        List<Meal> mealList3 = new ArrayList<>();
        for (int i = 4; i < 10; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList3.add(meal);
        }
        request.setAttribute("list2", mealList3);


        return "Reception/meal/meal.jsp";

    }
    @RequestMapping(value = "/Reception/mealManage/toManageMeal2", method = RequestMethod.GET)
    public String toManageM2(HttpServletRequest request, HttpSession session, Integer index) {
        List<Meal> mealList = mealService.getMeals();
        List<Meal> mealList3 = new ArrayList<>();
        for (int i = 4; i < 10; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList3.add(meal);
        }
        request.setAttribute("list2", mealList3);

        List<Meal> mealList4 = new ArrayList<>();
        for (int i = 10; i < 16; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList4.add(meal);
        }
        request.setAttribute("list3", mealList4);

        List<Meal> mealList5 = new ArrayList<>();
        for (int i = 16; i < 22; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList5.add(meal);
        }
        request.setAttribute("list4", mealList5);

        List<Meal> mealList6 = new ArrayList<>();
        for (int i = 22; i < 28; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList6.add(meal);
        }
        request.setAttribute("list5", mealList6);

        List<Meal> mealList7 = new ArrayList<>();
        for (int i = 28; i < 34; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList7.add(meal);
        }
        request.setAttribute("list6", mealList7);

        List<Meal> mealList8 = new ArrayList<>();
        for (int i = 34; i < 40; i++) {
            Meal meal = new Meal();
            meal = mealList.get(i);
            mealList8.add(meal);
        }
        request.setAttribute("list7", mealList8);
        return "Reception/meal/m-02.jsp";

    }

}
