package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.MealDao;
import com.lyxm.lychengdu.model.Meal;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MealService {
    @Resource
    private MealDao mealDao;

    public List<Meal> getMeals(){
        return mealDao.getMeals();
    }

}
