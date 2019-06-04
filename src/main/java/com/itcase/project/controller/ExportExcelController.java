package com.itcase.project.controller;

import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.util.ExeclUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.*;
import java.net.URLEncoder;
import java.util.*;

@Controller
@RequestMapping("/export/data")
public class ExportExcelController {

    private final Logger logger = LoggerFactory.getLogger(ExportExcelController.class);

    @Autowired
    private ExeclUtil execlUtil;
    @Autowired
    private CookieMapper cookieMapper;

    @RequestMapping(value = "/cookie",method = RequestMethod.GET)
    public String exportData(@RequestParam(defaultValue = "all") String type){

        Integer total = cookieMapper.getTotal(type);
        Map<String,Integer> map = new HashMap<>();
        map.put("start",0);
        map.put("end",total-1);
        List<Cookie> cookies = cookieMapper.selectAllCookies(map, type);
        String[] a = new String[6];
        List<String> list = new ArrayList();
        list.add("序号");
        list.add("名称");
        list.add("介绍");
        list.add("图片名称");
        list.add("其他");
        list.add("糕点类型");
        String[] strings = list.toArray(a);
        String title = "糕点内容";
        OutputStream os = null;
        String fileName = "糕点信息导出" + System.currentTimeMillis();
        String encode = null;
        try{
            encode = URLEncoder.encode(fileName + ".xls", "UTF-8");
            File f = new File("D:\\cookieData");
            File file = new File(f,encode);
            if(!f.exists()){
                f.mkdirs();
            }
            os = new FileOutputStream(file);
        }catch (FileNotFoundException e ){
            logger.error("file not found,please check again");
        }catch (UnsupportedEncodingException e1 ){
            e1.printStackTrace();
        }

        //System.out.println(os + encode );
        execlUtil.exportDataToExcel(cookies,strings,title,os);

        return "redirect:/info/getAll/cookie";
    }
}
