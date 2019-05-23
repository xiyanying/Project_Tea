package com.itcase.project.Dao;

import com.itcase.project.enetity.Advise;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface AdviseMapper {

    Advise selectCookieById(Integer id);

    List<Advise> selectAllAdvise(Map map);

    void deleteByPrimaryKey(Integer id);

    void insertAdivise(Advise advise);

    Integer getTotal();

    List<Advise> selectByCondtion(@Param("map") Map<String, Object> map);
}
