package com.itcase.project.Dao;

import com.itcase.project.enetity.Cookie;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Component
public interface CookieMapper {
    /**
     * 通过主键查询cookie
     * @param id 查询条件
     * @return
     */
    @Transactional(readOnly = true)
    Cookie selectCookieById(@Param(value = "id") Integer id);

    /**
     *
     * @param map 封装的条件
     * @param type 判断条件
     * @return Cookie集合
     */
    @Transactional(readOnly = true)
    List<Cookie> selectAllCookies(@Param("map") Map map,@Param("type") String type);

    /**
     * 删除操作
     * @param id 删除条件
     */
    @Transactional(readOnly = false)
     void deleteByPrimaryKey(Integer id);

    /**
     *  单挑插入
     * @param cookie 对象
     */
    @Transactional(readOnly = false)
     void insertCookie(Cookie cookie);

    /**
     * 有条件的更新对象
     * @param cookie 更新对象
     */
    @Transactional(readOnly = false)
     void updateByPrimaryKeySelective(Cookie cookie);

    /**
     * 记录条数
     * @param type 判断条件
     * @return
     */
    @Transactional(readOnly = false)
     Integer getTotal(@Param("type") String type);

    /**
     *  批量查询cookies
     * @param cids 对象id集合
     * @return
     */
     List<Cookie> getBatch(List<Integer> cids);

    /**
     *  重复性校验（添加糕点）
     * @param cookieName
     * @return
     */
     Integer getCookieCount(String cookieName);
}
