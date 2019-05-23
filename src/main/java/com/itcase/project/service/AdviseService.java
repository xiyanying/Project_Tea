package com.itcase.project.service;

import com.alibaba.fastjson.JSONObject;
import com.itcase.project.enetity.Advise;

public interface AdviseService {

    void sumbitService(Advise advise);


    JSONObject selectAllAdvise(JSONObject para);
}
