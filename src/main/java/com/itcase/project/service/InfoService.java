package com.itcase.project.service;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.enetity.Cookie;

import java.util.List;

public interface InfoService {
    /**
     *  添加糕点信息
     * @param cookie
     */
    void addCookieService(Cookie cookie);

    /**
     * 删除糕点信息 通过主键删除
     * @param Id
     * @return booleam 布尔值
     */
    boolean deleteCookieService(Integer Id);

    /**
     *  更新糕点信息
     * @param cookie
     */
    void updateCookieService(Cookie cookie);

    /**
     * 通过主键id 查询糕点
     * @param Id
     * @return 糕点
     */
    Cookie selectOneService(Integer Id);

    /**
     * 查询所有糕点信息
     * @return list
     */
    JSONObject selectAllService(JSONObject jsonObject);


}
