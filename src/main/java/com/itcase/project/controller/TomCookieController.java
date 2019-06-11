package com.itcase.project.controller;

import com.itcase.project.Dao.TomCookieMapper;
import com.itcase.project.enetity.Page;
import com.itcase.project.enetity.TomCookie;
import com.itcase.project.enetity.User;
import com.itcase.project.service.impl.TomCookieServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Author xyy
 * @Date 2019/5/7 22:26
 */
@Controller
@RequestMapping("/tom")
public class TomCookieController {

    private final Logger logger = LoggerFactory.getLogger(TomCookieController.class);

    @Autowired
    private TomCookieServiceImpl service;
    @Autowired
    private TomCookieMapper mapper;

    @RequestMapping(value = "/pitch",method = RequestMethod.GET)
    public String pitchCookie(String id){
        logger.info("pitchCookie id:{}",id);
        if(Objects.isNull(id)){
            return "redirect:/cookie/select";
        }

        boolean b = service.batchTomCookie(id);
        return "redirect:/tom/cookie/select";

    }

    @RequestMapping(value = "/cookie/select",method = RequestMethod.GET)
    public ModelAndView tomCookieSelect(@RequestParam(defaultValue = "all") String type, @RequestParam(defaultValue = "1") Integer current, @RequestParam(defaultValue = "5") Integer pageSize, ModelAndView modelAndView,
                                        HttpServletRequest request){
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        instance.add(Calendar.DAY_OF_MONTH,1);
        Date time = instance.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String tomTime = sdf.format(time);
        Integer total = mapper.getTotalByTime(type,tomTime);
        int pageCount = total / pageSize;
        if(total % pageSize > 0){
            pageCount++;
        }
        if(current>=pageCount){
            current = pageCount;
        }

        if(current<=1){
            current=1;
        }
        Page<List<TomCookie>> listPage = service.selectTomCookie(current, pageSize, type);
        User user = (User) request.getSession().getAttribute("user");
        modelAndView.addObject("data",listPage.getDate());
        modelAndView.addObject("current",current);
        modelAndView.addObject("list",listPage);
        modelAndView.addObject("type",type);
        modelAndView.addObject("user",user);
        modelAndView.setViewName("/WEB-INF/jsp/tomCookie.jsp");
        return modelAndView;
    }

    @RequestMapping(value = "delete/cookie",method = RequestMethod.GET)
    public String deleteTomCookie(Integer id){
        logger.info("delete operation id:{}",id);
        if(Objects.isNull(id)){
            logger.error("id不能为空");
            throw new RuntimeException("id is null,please check again!");
        }
        service.deleteCookie(id);
        return "redirect:/tom/cookie/select";

    }
}
