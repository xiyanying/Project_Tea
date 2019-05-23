package com.itcase.project.controller;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.Dao.AdviseMapper;
import com.itcase.project.enetity.Advise;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.service.impl.AdviseServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/info/advise")
public class AdviseDisplay {

    private final Logger logger = LoggerFactory.getLogger(AdviseDisplay.class);
    @Autowired
    private AdviseMapper adviseMapper;

    @Autowired
    private AdviseServiceImpl service;

    @RequestMapping(value = "/display",method = RequestMethod.GET)
    public String adviseDisplay(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5")Integer pagesize){
        Integer total = adviseMapper.getTotal();
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
        para.put("page",page);
        para.put("pagesize",pagesize);
        JSONObject object = service.selectAllAdvise(para);
        List<Advise> advises = (List<Advise>)object.get("advises");

        model.addAttribute("pagecount",pageCount);
        model.addAttribute("current",page);
        model.addAttribute("advises",advises);
        model.addAttribute("start",(page-1)*pagesize+1);
        return "/WEB-INF/jsp/adviseShow.jsp";

    }

    public String deleteAdvise(Integer id){
        logger.info("delete advise id is :{}",id);
        if(id<0){
            return "redirect:/info/advise/display";
        }
        adviseMapper.deleteByPrimaryKey(id);
        return "redirect:/info/advise/display";
    }
}
