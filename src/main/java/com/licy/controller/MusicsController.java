package com.licy.controller;

import com.licy.service.IMusicsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
@Controller
public class MusicsController {
    @Autowired
    private IMusicsService musicsService;
    @RequestMapping("/music")
    public String toMusic(){
        return "music";
    }

    @RequestMapping("/picture")
    public String toPicture(){
        return "picture";
    }
}
