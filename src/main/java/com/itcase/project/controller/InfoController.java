package com.itcase.project.controller;

import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.config.LocalUser;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.enetity.CookieVo;
import com.itcase.project.enetity.Result;
import com.itcase.project.enetity.User;
import com.itcase.project.service.impl.InfoServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.sound.midi.SoundbankResource;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/info")
public class InfoController {
    @Autowired
    private InfoServiceImpl infoService;
    private Logger logger = LoggerFactory.getLogger(InfoController.class);

    @Autowired
    private CookieMapper cookieMapper;

    @Autowired
    private LocalUser localUser;

    @RequestMapping(value = "/add/cookie",method = RequestMethod.POST)
    public String addCookie(@Validated CookieVo cookie, BindingResult bindingResult,Model model) throws Exception{
        //System.out.println(cookie.toString());
        List<String> message = new ArrayList<>();
        logger.info("add cookie content:{}",cookie.toString());
        // 数据校验
        if(bindingResult.hasErrors()){
            for (FieldError fieldError : bindingResult.getFieldErrors()){
                message.add(fieldError.getDefaultMessage());
            }
            model.addAttribute("errors",message);
            return "/WEB-INF/jsp/add.jsp";
        }
        //添加糕点的名称重复性校验
        int cookieCount = cookieMapper.getCookieCount(cookie.getcName());
        if (cookieCount!=0){
            model.addAttribute("sameCookies","请勿重复添加！");
            return "/WEB-INF/jsp/add.jsp";
        }
        String localpath = "D:\\apache-tomcat-7.0.93\\webapps\\static\\img\\";
        String fileName = null;
        if(!cookie.getUpload().isEmpty()){
            String contentType = cookie.getUpload().getContentType();
            //System.out.println(contentType);
            //获得文件后缀名
            String suffixName=contentType.substring(contentType.indexOf("/")+1);
            fileName = cookie.getUpload().getOriginalFilename();
            // 上传图片操作
            cookie.getUpload().transferTo(new File(localpath+fileName));
        }
        String imgPath = fileName;
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
    public ModelAndView selectAllCookie(ModelAndView modelAndView, @RequestParam(defaultValue = "all") String type, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5") Integer pagesize,
                                        HttpServletRequest request){
        Integer total =cookieMapper.getTotal(type);
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
        User user = (User) request.getSession().getAttribute("user");
        modelAndView.addObject("start",(page-1)*pagesize+1);
        modelAndView.addObject("pagecount",pageCount);
        modelAndView.addObject("current",page);
        modelAndView.addObject("type",type);
        modelAndView.addObject("cookies",cookies);
        modelAndView.addObject("user",user);
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

    @RequestMapping(value = "/advise",method = RequestMethod.GET)
    public String getAdvise(){
        return "/WEB-INF/jsp/adviseShow.jsp";
    }

}
