package com.itcase.project.service.impl;

import com.itcase.project.Dao.AdviseMapper;
import com.itcase.project.enetity.Advise;
import com.itcase.project.service.AdviseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdviseServiceImpl implements AdviseService {

    @Autowired
    private AdviseMapper adviseMapper;

    @Override
    public void sumbitService(Advise advise) {
        adviseMapper.insertAdivise(advise);
    }
}
