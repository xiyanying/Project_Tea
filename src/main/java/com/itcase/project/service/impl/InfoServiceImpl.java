package com.itcase.project.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.service.InfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class InfoServiceImpl implements InfoService {
    private Logger logger = LoggerFactory.getLogger(InfoServiceImpl.class);

    @Autowired
    private CookieMapper mapper;

    @Override
    public void addCookieService(Cookie cookie) {
        try{
            mapper.insertCookie(cookie);
            logger.info("add Cookie success! cookie:{}",cookie.toString());
        }catch (Exception e){
            logger.error("add Cookie failed! cookie:{}",cookie.toString());
            throw e;
        }

    }

    @Override
    public boolean deleteCookieService(Integer Id) {
        try{
            logger.info("delete cookie id:{}",Id);
            mapper.deleteByPrimaryKey(Id);
        }catch (Exception e){
            logger.error("delete Cookie failed...");
            return false;
        }
        return true;
    }

    @Override
    public void updateCookieService(Cookie cookie) {
        logger.info("cookie update by key, id:{}",cookie.getcId());
        try{
            Objects.requireNonNull(cookie.getcId(),"update cookie must have Id!");
            mapper.updateByPrimaryKeySelective(cookie);
        }catch (Exception e){
            logger.error("update cookie failed. Id is null");
        }
    }

    @Override
    public Cookie selectOneService(Integer Id) {
        logger.info("select cookie by Id:{}",Id);
        return mapper.selectCookieById(Id);
    }

    @Override
    public JSONObject selectAllService(JSONObject jsonObject) {
        JSONObject object = new JSONObject();
        String type = (String) jsonObject.get("type");
        Integer page = (Integer) jsonObject.get("page");
        Integer pagesize = (Integer)jsonObject.get("pagesize");
        Map<String,Object> map = new HashMap();
        Integer start = (page-1) * pagesize;
        map.put("start",start);
        map.put("end",pagesize);
        Integer size = null;
        if("all".equals(type)){
            size = mapper.getTotal(type);
        }else {
            size = mapper.getTotal(type);
        }
        List<Cookie> cookies = mapper.selectAllCookies(map,type);
        object.put("total",size);
        object.put("cookies",cookies);
        return object;
    }
}
