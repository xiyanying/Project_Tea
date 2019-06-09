package com.itcase.project.Dao;

import com.itcase.project.enetity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public interface UserMapper {

    User getResult(@Param("userName") String userName, @Param("passWord") String passWord);
}
