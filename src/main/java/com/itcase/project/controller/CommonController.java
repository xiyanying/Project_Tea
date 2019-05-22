package com.itcase.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/export/common")
public class CommonController {

    @RequestMapping("/help")
    public String heloPage(){
        return "/WEB-INF/xsyuJsp/help.jsp";
    }

    @RequestMapping("/advisepage")
    public String advisepage(){
        return "/WEB-INF/xsyuJsp/advise.jsp";
    }

    @RequestMapping("/teaStory")
    public String teaStory(){
        return "/WEB-INF/xsyuJsp/teaStory.jsp";
    }
    @RequestMapping("/tomorrowTea")
    public String tomorrowTea(){
        return "/WEB-INF/xsyuJsp/tomorrowTea.jsp";
    }

    @RequestMapping("/teaKinds")
    public String teaKinds(){
        return "/WEB-INF/xsyuJsp/teaKinds.jsp";
    }

    @RequestMapping("/login")
    public String login(){
        return "/login.jsp";
    }
}
