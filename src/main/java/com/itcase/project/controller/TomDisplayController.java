package com.itcase.project.controller;

import com.itcase.project.enetity.TomCookie;
import com.itcase.project.service.impl.TomCookieServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Stream;

@Controller
@RequestMapping("/export/tomcookie")
public class TomDisplayController {
    private final Logger logger = LoggerFactory.getLogger(TomDisplayController.class);
    @Autowired
    private TomCookieServiceImpl service;

    @RequestMapping(value = "/display",method = RequestMethod.GET)
    public String displayCookie(Model model){
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        instance.add(Calendar.DAY_OF_MONTH,1);
        Date time = instance.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String tomTime = sdf.format(time);
        List<TomCookie> tomCookies = service.dayCookie(tomTime);

        model.addAttribute("display",tomCookies);
        return "/WEB-INF/xsyuJsp/tomorrowTea.jsp";

    }
}
