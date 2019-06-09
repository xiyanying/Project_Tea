package com.itcase.project.service;

import com.itcase.project.enetity.User;

public interface UserService {

    User findUser(String userName, String passWord);
}
