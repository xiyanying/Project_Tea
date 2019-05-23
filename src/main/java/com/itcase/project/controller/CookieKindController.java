package com.itcase.project.controller;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.service.impl.InfoServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/export/kind")
public class CookieKindController {

    @Autowired
    private InfoServiceImpl infoService;

    @Autowired
    private CookieMapper cookieMapper;
    private final Logger logger = LoggerFactory.getLogger(CookieKindController.class);

    @RequestMapping(value = "/display",method = RequestMethod.GET)
    public ModelAndView displayKind(ModelAndView model, @RequestParam(defaultValue = "all") String type, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "9")Integer pagesize){
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
        JSONObject object = infoService.selectAllService(para);
        Integer size =(Integer) object.get("total");
        List<Cookie> cookies = (List<Cookie>)object.get("cookies");

        model.addObject("pagecount",pageCount);
        model.addObject("type",type);
        model.addObject("current",page);
        model.addObject("cookies",cookies);
        model.setViewName("/WEB-INF/xsyuJsp/teaKinds.jsp");
        return model;
    }
}
