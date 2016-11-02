package com.licy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lingling on 2016/11/2.
 */
@Controller
public class MeController {
    @RequestMapping("/me")
    public String about(){
        return "me";
    }
}
