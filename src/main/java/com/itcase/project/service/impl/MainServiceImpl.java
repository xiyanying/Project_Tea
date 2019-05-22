package com.itcase.project.service.impl;

import com.itcase.project.Dao.TomCookieMapper;
import com.itcase.project.enetity.CookieVo;
import com.itcase.project.enetity.TomCookie;
import com.itcase.project.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MainServiceImpl implements MainService {
    @Autowired
    private TomCookieMapper tomCookieMapper;

    @Override
    public List<String> getFive(Integer limit) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(new Date());
        List<TomCookie> byCondition = tomCookieMapper.getByCondition(limit, format);
        List<String> imgUris = byCondition.stream().map(TomCookie::getcImagePath).collect(Collectors.toList());
        return imgUris;

    }
}
