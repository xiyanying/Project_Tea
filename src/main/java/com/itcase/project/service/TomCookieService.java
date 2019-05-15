package com.itcase.project.service;

import com.itcase.project.enetity.Page;
import com.itcase.project.enetity.TomCookie;

import java.util.List;

/**
 * @Author zhanglipeng
 * @Date 2019/5/7 22:35
 */
public interface TomCookieService {

    boolean batchTomCookie(String ids);

    Page<List<TomCookie>> selectTomCookie(Integer current, Integer pagesize,String type);

    void deleteCookie(Integer id);
}
