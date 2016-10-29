package com.licy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lingling on 2016/10/29.
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    @RequestMapping("/login")
    public String test(){
        return "manager/login";
    }
    @RequestMapping("/home")
    public String home(){
        return "manager/home";
    }
}
