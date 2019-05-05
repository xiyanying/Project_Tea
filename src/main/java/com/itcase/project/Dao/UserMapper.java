package com.itcase.project.Dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public interface UserMapper {

    Integer getResult(@Param("userName") String userName, @Param("passWord") String passWord);
}
