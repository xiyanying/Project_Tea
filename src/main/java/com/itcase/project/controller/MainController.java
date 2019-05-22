package com.itcase.project.controller;

import com.itcase.project.service.impl.MainServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/export/main")
public class MainController {

    @Autowired
    private MainServiceImpl service;
    @RequestMapping(value = "/image",method = RequestMethod.GET)
    public String fiveImage(Model model,@RequestParam(defaultValue = "5") Integer limit){
        List<String> five = service.getFive(limit);
        // 获取动态资源资源名称
        List<String> collect = five.stream().map(s -> s.substring(s.lastIndexOf("\\") + 1)).collect(Collectors.toList());
        model.addAttribute("imgs",collect);
        return "/main.jsp";
    }
}
