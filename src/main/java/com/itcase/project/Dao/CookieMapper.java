package com.itcase.project.Dao;

import com.itcase.project.enetity.Cookie;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Component
public interface CookieMapper {

    @Transactional(readOnly = true)
   public Cookie selectCookieById(@Param(value = "id") Integer id);

    @Transactional(readOnly = true)
   public List<Cookie> selectAllCookies();

    @Transactional(readOnly = false)
    public void deleteByPrimaryKey(Integer id);

    @Transactional(readOnly = false)
    public void insertCookie(Cookie cookie);

    @Transactional(readOnly = false)
    public void updateByPrimaryKeySelective(Cookie cookie);
}
