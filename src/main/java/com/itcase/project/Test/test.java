package com.itcase.project.Test;

import com.itcase.project.Dao.CookieMapper;
import com.itcase.project.enetity.Cookie;
import com.itcase.project.enetity.Enum.CategoryEnum;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

//    @Autowired
//    private CookieMapper cookieMapper;

    @Test
    public void say(){
//        try {
//            Class<?> cookie = Class.forName("Cookie", true, new UserClassLoad());
//            Object o = cookie.newInstance();
//            System.out.println(o.getClass().getClassLoader());
//            //System.out.println(cookie.getClassLoader());
//        }catch (Exception e){
//            System.out.println(e.getMessage());
//        }


        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        CookieMapper bean = ac.getBean(CookieMapper.class);
//        Cookie cookie =
//                bean.selectCookieById(1);
        Cookie c = new Cookie();
        c.setcImagePath("/user/dir");
        c.setcIntroduce("sdsqwqqw");
        c.setcName("xiaobai");
        c.setcOther("xyy1");
        c.setcType(CategoryEnum.COOKIE_INFO.getDesc());
         bean.insertCookie(c);
      //  List<Cookie> cookies = bean.selectAllCookies();
        Cookie cookie = bean.selectCookieById(1);

        System.out.println(cookie.toString());
    }
}
