package com.itcase.project.service;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.enetity.Page;
import com.itcase.project.enetity.TomCookie;

import java.util.List;

/**
 * @Author xyy
 * @Date 2019/5/7 22:35
 */
public interface TomCookieService {

    boolean batchTomCookie(String ids);

    Page<List<TomCookie>> selectTomCookie(Integer current, Integer pagesize,String type);

    void deleteCookie(Integer id);

    JSONObject dayCookie(String dayTime, JSONObject para);
}
