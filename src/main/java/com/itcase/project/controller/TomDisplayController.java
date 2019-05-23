package com.itcase.project.controller;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.Dao.TomCookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.enetity.TomCookie;
import com.itcase.project.service.impl.TomCookieServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    @Autowired
    private TomCookieMapper cookieMapper;

    @RequestMapping(value = "/display",method = RequestMethod.GET)
    public String displayCookie(Model model, @RequestParam(defaultValue = "all") String type, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "3")Integer pagesize){
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        instance.add(Calendar.DAY_OF_MONTH,1);
        Date time = instance.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String tomTime = sdf.format(time);
        Integer total = cookieMapper.getTotal(type);
        int pageCount = total / pagesize;
        if(total % pagesize > 0){
            pageCount++;
        }
        if(page>=pageCount){
            page = pageCount;
        }

        if(page<=1){
            page=1;
        }
        JSONObject para = new JSONObject();
        para.put("type",type);
        para.put("page",page);
        para.put("pagesize",pagesize);
        JSONObject object = service.dayCookie(tomTime,para);
        Integer size =(Integer) object.get("total");
        List<TomCookie> cookies = (List<TomCookie>)object.get("cookies");

        model.addAttribute("pagecount",pageCount);
        model.addAttribute("type",type);
        model.addAttribute("current",page);
        model.addAttribute("cookies",cookies);
        return "/WEB-INF/xsyuJsp/tomorrowTea.jsp";

    }
}
