package com.itcase.project.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.Dao.AdviseMapper;
import com.itcase.project.enetity.Advise;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.service.AdviseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdviseServiceImpl implements AdviseService {

    @Autowired
    private AdviseMapper adviseMapper;

    @Override
    public void sumbitService(Advise advise) {
        adviseMapper.insertAdivise(advise);
    }

    @Override
    public JSONObject selectAllAdvise(JSONObject para) {
        JSONObject object = new JSONObject();
        String type = (String) para.get("type");
        Integer page = (Integer) para.get("page");
        Integer pagesize = (Integer)para.get("pagesize");
        Map<String,Object> map = new HashMap();
        Integer start = (page-1) * pagesize;
        map.put("start",start);
        map.put("end",pagesize);
        List<Advise> advises = adviseMapper.selectByCondtion(map);
        object.put("advises",advises);
        return object;
    }
}
