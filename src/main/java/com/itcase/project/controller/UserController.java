package com.itcase.project.controller;

import com.itcase.project.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Objects;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserServiceImpl userService;
    @RequestMapping("/login")
    public ModelAndView userLogin(ModelAndView modelAndView,
                                  @RequestParam("userName") String userName,@RequestParam("passWord") String passWord){
        if(userName==null || passWord==null){
            modelAndView.setViewName("/WEB-INF/jsp/login.jsp");
            modelAndView.addObject("errMsg","用户名或密码错误");
            return modelAndView;
        }

        boolean result = userService.findUser(userName, passWord);
        if(!result){
            modelAndView.setViewName("/WEB-INF/jsp/login.jsp");
            modelAndView.addObject("errMsg","用户名或密码错误");
            return modelAndView;
        }
        modelAndView.setViewName("redirect:/info/getAll/cookie");
        modelAndView.addObject("userName",userName);
        return modelAndView;

    }
}
