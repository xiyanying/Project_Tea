package com.itcase.project.controller;

import com.itcase.project.service.impl.TomCookieServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
}
