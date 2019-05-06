package com.itcase.project.Dao;

import com.itcase.project.enetity.Cookie;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Component
public interface CookieMapper {

    @Transactional(readOnly = true)
   public Cookie selectCookieById(@Param(value = "id") Integer id);

    @Transactional(readOnly = true)
   public List<Cookie> selectAllCookies(@Param("map") Map map,@Param("type") String type);

    @Transactional(readOnly = false)
    public void deleteByPrimaryKey(Integer id);

    @Transactional(readOnly = false)
    public void insertCookie(Cookie cookie);

    @Transactional(readOnly = false)
    public void updateByPrimaryKeySelective(Cookie cookie);

    @Transactional(readOnly = false)
    public Integer getTotal(@Param("type") String type);
}
