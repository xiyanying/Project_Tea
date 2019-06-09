package com.itcase.project.controller;

import com.itcase.project.config.LocalUser;
import com.itcase.project.enetity.User;
import com.itcase.project.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Objects;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserServiceImpl userService;
    @Autowired
    private LocalUser localUser;
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView userLogin(ModelAndView modelAndView,
                                  @RequestParam("userName") String userName, @RequestParam("passWord") String passWord,
                                  HttpServletRequest request){
        if(userName==null || passWord==null){
            modelAndView.setViewName("/login.jsp");
            modelAndView.addObject("errMsg","用户名或密码错误");
            return modelAndView;
        }

        User user = userService.findUser(userName, passWord);
        if(Objects.isNull(user)){
            modelAndView.setViewName("/login.jsp");
            modelAndView.addObject("errMsg","用户名或密码错误");
            return modelAndView;
        }
        localUser.saveUser(user);
        HttpSession session = request.getSession();
        session.setAttribute("user",user);
        modelAndView.setViewName("redirect:/info/getAll/cookie");
        modelAndView.addObject("user",user);
        return modelAndView;
    }

    @RequestMapping("/destory")
    public String destory(Model model){
        localUser.getUserContent().remove();
        return "redirect:/export/main/image";
    }
}
