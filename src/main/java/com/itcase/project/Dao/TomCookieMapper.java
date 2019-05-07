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

    public void batchCookie(List<TomCookie> tomCookies);
}
