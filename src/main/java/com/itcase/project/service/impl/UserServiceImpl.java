package com.itcase.project.service.impl;

import com.itcase.project.Dao.UserMapper;
import com.itcase.project.enetity.User;
import com.itcase.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findUser(String userName, String passWord) {
        User user = userMapper.getResult(userName, passWord);
       /* if(result!=1){
            return false;
        }*/
        return user;
    }
}
