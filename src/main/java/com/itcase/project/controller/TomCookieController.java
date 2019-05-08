package com.itcase.project.controller;

import com.itcase.project.enetity.Page;
import com.itcase.project.enetity.TomCookie;
import com.itcase.project.service.impl.TomCookieServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhanglipeng
 * @Date 2019/5/7 22:26
 */
@RestController
@RequestMapping("/tom")
public class TomCookieController {

    @Autowired
    private TomCookieServiceImpl service;

    @RequestMapping(value = "/pitch",method = RequestMethod.GET)
    public void pitchCookie(String id){
        System.out.println(id);
        boolean b = service.batchTomCookie(id);
        System.out.println(b);
    }

    @RequestMapping(value = "/cookie/select",method = RequestMethod.GET)
    public ModelAndView tomCookieSelect(@RequestParam(defaultValue = "all") String type, @RequestParam(defaultValue = "1") Integer current, @RequestParam(defaultValue = "5") Integer pageSize, ModelAndView modelAndView){

        Page<List<TomCookie>> listPage = service.selectTomCookie(current, pageSize, type);
        Integer pageCount = listPage.getPageCount();
        List<Integer> num = new ArrayList<>();
        for (int i= 1;i<=pageCount;i++){
            num.add(i);
        }
        modelAndView.addObject("data",listPage.getDate());
        modelAndView.addObject("list",listPage);
        modelAndView.addObject("pageCount",num);
        modelAndView.addObject("type",type);
        modelAndView.setViewName("/WEB-INF/jsp/tomCookie.jsp");
        return modelAndView;
    }
}
