package com.itcase.project.controller;

import com.itcase.project.enetity.Result;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("test")
public class testController {

    @RequestMapping(value = "/ceshi",method = RequestMethod.GET)
    public ModelAndView getTest(ModelAndView  model){
        String test = "hello";
        model.setViewName("/WEB-INF/jsp/add.jsp");
        model.addObject("tet",test);
        System.out.println("测试");
        return model;

    }
}
