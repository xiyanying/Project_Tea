package com.itcase.project.service.impl;

import com.itcase.project.Dao.UserMapper;
import com.itcase.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public boolean findUser(String userName, String passWord) {
        Integer result = userMapper.getResult(userName, passWord);
        System.out.println(result);
        if(result!=1){
            return false;
        }
        return true;
    }
}
