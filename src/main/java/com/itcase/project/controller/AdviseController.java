package com.itcase.project.controller;

import com.itcase.project.enetity.Advise;
import com.itcase.project.service.impl.AdviseServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/export/advise")
public class AdviseController {
    Logger logger = LoggerFactory.getLogger(AdviseController.class);
    @Autowired
    private AdviseServiceImpl adviseService;

    @RequestMapping(value = "/sumbit",method = RequestMethod.POST)
    public String adviseSubmit(@Validated Advise advise, BindingResult bindingResult, Model model){
        List<String> message = new ArrayList<>();
        // 数据校验
        if(bindingResult.hasErrors()){
            for (FieldError fieldError : bindingResult.getFieldErrors()){
               message.add(fieldError.getDefaultMessage());
            }
            model.addAttribute("error",message);
            return "/WEB-INF/xsyuJsp/advise.jsp";

        }
        logger.info("advise inform is {}",advise.toString());
        adviseService.sumbitService(advise);
        return "/WEB-INF/xsyuJsp/help.jsp";

    }
}
