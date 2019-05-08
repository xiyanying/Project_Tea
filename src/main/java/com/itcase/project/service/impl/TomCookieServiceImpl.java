package com.itcase.project.service.impl;

import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.Dao.TomCookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.enetity.TomCookie;
import com.itcase.project.service.TomCookieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.ws.soap.Addressing;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
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
}
