package com.itcase.project.config;

import com.itcase.project.enetity.User;
import org.springframework.stereotype.Component;

@Component
public class LocalUser {
    private final ThreadLocal<User> userContent=new ThreadLocal();

    public ThreadLocal<User> getUserContent() {
        return userContent;
    }

    public void saveUser(User user){
        userContent.set(user);
    }
}
