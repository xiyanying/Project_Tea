package com.itcase.project.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.Dao.TomCookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.enetity.Enum.CategoryEnum;
import com.itcase.project.enetity.Page;
import com.itcase.project.enetity.TomCookie;
import com.itcase.project.service.TomCookieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.soap.Addressing;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.toList;

/**
 * @Author zhanglipeng
 * @Date 2019/5/7 22:37
 */
@Service
public class TomCookieServiceImpl implements TomCookieService {
    private Logger logger = LoggerFactory.getLogger(TomCookieServiceImpl.class);

    @Autowired
    private CookieMapper cookieMapper;

    @Autowired
    private TomCookieMapper tomCookieMapper;

    @Override
    public boolean batchTomCookie(String ids) {
        String[] split = ids.split(",");
        List<Integer> cids = new ArrayList<>();
        List<TomCookie> tomCookies = new ArrayList<>();
        List<String> collect = Arrays.stream(split).collect(toList());
        collect.forEach((String a) -> cids.add(Integer.valueOf(a)));
        List<Cookie> batchCookie = cookieMapper.getBatch(cids);
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        instance.add(Calendar.DAY_OF_MONTH,1);
        Date time = instance.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(time);
        batchCookie.forEach((Cookie c) -> {
            TomCookie tomCookie = new TomCookie();
            tomCookie.setcId(c.getcId());
            tomCookie.setcImagePath(c.getcImagePath());
            tomCookie.setcIntroduce(c.getcIntroduce());
            tomCookie.setcName(c.getcName());
            tomCookie.setcOther(c.getcOther());
            tomCookie.setcType(c.getcType());
            tomCookie.setCreateTime(date);
            tomCookies.add(tomCookie);
        });
        if(tomCookies.size()!=0){
            try{
                tomCookieMapper.batchCookie(tomCookies);
                return true;
            }catch (Exception e){
                logger.error("批量添加失败{}",tomCookies);
            }

        }
        return false;

    }

    @Override
    public Page<List<TomCookie>> selectTomCookie(Integer current, Integer pagesize,String type) {
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        instance.add(Calendar.DAY_OF_MONTH,1);
        Date time = instance.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String tomTime = sdf.format(time);
        List<TomCookie> tomCookies = tomCookieMapper.selectCookieByTime(tomTime);
        List<TomCookie> collect = tomCookies;
        if(CategoryEnum.COOKIE_INFO.getDesc().equals(type)){
            collect = tomCookies.stream().filter(tomCookie -> type.equals(tomCookie.getcType())).collect(toList());
        }else if(CategoryEnum.FRUIT_INFO.getDesc().equals(type)){
            collect = tomCookies.stream().filter(tomCookie -> type.equals(tomCookie.getcType())).collect(toList());
        }else if(CategoryEnum.TEA_INFO.getDesc().equals(type)){
            collect = tomCookies.stream().filter(tomCookie -> type.equals(tomCookie.getcType())).collect(toList());
        }
        int size = 0;
        if (!collect.isEmpty()){
            size = collect.size();
        }
        Page<List<TomCookie>> page = new Page<>(pagesize,size,current);
        Integer start = page.getStart();
        List<TomCookie> collects = tomCookies.stream().skip(start).limit(pagesize).collect(toList());
        page.setDate(collects);
        page.setTomTime(tomTime);
        return page;
    }

    @Override
    public void deleteCookie(Integer id) {
        tomCookieMapper.deleteCookieById(id);

    }

    @Override
    public JSONObject dayCookie(String dayTime, JSONObject para) {
        JSONObject object = new JSONObject();
        String type = (String) para.get("type");
        Integer page = (Integer) para.get("page");
        Integer pagesize = (Integer)para.get("pagesize");
        Map<String,Object> map = new HashMap();
        Integer start = (page-1) * pagesize;
        map.put("start",start);
        map.put("end",pagesize);
        /*Integer size = null;
        if("all".equals(type)){
            size = tomCookieMapper.getTotal(type);
        }else {
            size = tomCookieMapper.getTotal(type);
        }*/
        List<TomCookie> cookies = tomCookieMapper.selectByPara(map,type,dayTime);
        /*object.put("total",size);*/
        object.put("cookies",cookies);
        return object;
    }
}
