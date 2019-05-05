package com.itcase.project.controller;

import com.itcase.project.enetity.Cookie;
import com.itcase.project.enetity.CookieVo;
import com.itcase.project.enetity.Result;
import com.itcase.project.service.impl.InfoServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.sound.midi.SoundbankResource;
import java.io.File;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/info")
public class InfoController {
    @Autowired
    private InfoServiceImpl infoService;
    private Logger logger = LoggerFactory.getLogger(InfoController.class);

    @RequestMapping(value = "/add/cookie",method = RequestMethod.POST)
    public String addCookie(CookieVo cookie) throws Exception{
        logger.info("add cookie content:{}",cookie.toString());
        String localpath = "D:\\File\\";
        String fileName = null;
        if(!cookie.getUpload().isEmpty()){
            String contentType = cookie.getUpload().getContentType();
            System.out.println(contentType);
            //获得文件后缀名
            String suffixName=contentType.substring(contentType.indexOf("/")+1);
            fileName = cookie.getUpload().getOriginalFilename();
            cookie.getUpload().transferTo(new File(localpath+fileName));
        }
        String imgPath = localpath + fileName;
        cookie.setcImagePath(imgPath);
        infoService.addCookieService(cookie);
        return "redirect:/info/getAll/cookie";
    }

    @RequestMapping(value = "/delete/cookie",method = RequestMethod.GET)
    public String deleteCookie(@RequestParam("id") Integer id){
        logger.info("delete cookie by primary key id:{}",id);
        boolean result = infoService.deleteCookieService(id);
        if (!result){
            logger.error("delete cookie failed! id:{}",id);
        }
        return "redirect:/info/getAll/cookie";
    }

    @RequestMapping(value = "/update/cookie",method = RequestMethod.POST)
    public String updateCookie(Cookie cookie){
        logger.info("update cookie:{}",cookie.toString());
        infoService.updateCookieService(cookie);
        return "redirect:/info/getAll/cookie";

    }

    @RequestMapping(value = "/get/cookie",method = RequestMethod.GET)
    public ModelAndView selectOneCookie(@RequestParam("id") Integer id,ModelAndView modelAndView){
        logger.info("select cookie info by id:{}",id);
        Cookie cookie = infoService.selectOneService(id);
        modelAndView.addObject("acookie",cookie);
        modelAndView.setViewName("/WEB-INF/jsp/cookie.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "/getAll/cookie",method = RequestMethod.GET)
    public ModelAndView selectAllCookie(ModelAndView modelAndView){
        List<Cookie> cookies = infoService.selectAllService();
        modelAndView.addObject("cookies",cookies);
        modelAndView.setViewName("/WEB-INF/jsp/main.jsp");
       return modelAndView;
    }

    @RequestMapping("/jump/jsp")
    public ModelAndView jumpJsp(ModelAndView modelAndView){
        modelAndView.setViewName("/WEB-INF/jsp/add.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "/get/update",method = RequestMethod.GET)
    public ModelAndView selectUpdate(@RequestParam("id") Integer id,ModelAndView modelAndView){
        logger.info("select cookie info by id:{}",id);
        Cookie cookie = infoService.selectOneService(id);
        modelAndView.addObject("ucookie",cookie);
        modelAndView.setViewName("/WEB-INF/jsp/update.jsp");
        return modelAndView;
    }

}
