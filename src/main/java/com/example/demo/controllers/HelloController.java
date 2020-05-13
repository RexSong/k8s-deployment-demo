package com.example.demo.controllers;

import com.example.demo.models.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @RequestMapping("/hello")
    public String hello(){
        return "Hello World";
    }

    @RequestMapping("/user")
    public User getUser(){
        User u = new User();
        u.setId(1);
        u.setName("1_name");
        return u;
    }
}
