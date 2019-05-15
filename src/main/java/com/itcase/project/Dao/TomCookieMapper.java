package com.itcase.project.Dao;

import com.itcase.project.enetity.TomCookie;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Author zhanglipeng
 * @Date 2019/5/7 22:58
 */
@Component
public interface TomCookieMapper {
    /**
     * 批量插入cookie数据
     * @param  tomCookies 对象
     */
    void batchCookie(List<TomCookie> tomCookies);

    /**
     * 通过时间查询符合的数据总数
     * @param time 查询条件
     * @return List<TomCookie> 集合
     */
     List<TomCookie> selectCookieByTime(String time);

     void deleteCookieById(Integer id);
}
