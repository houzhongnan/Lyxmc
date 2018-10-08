package com.lyxm.lychengdu.web.Reception.sceneryManage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Controller
public class SceneryManageController {

    @RequestMapping(value="/Reception/sceneryManage/toManageScenery",method = RequestMethod.GET)
    public String toManageScenery(HttpServletRequest request, HttpSession session){

        return "/jsp/Reception/index.jsp";
    }
}
