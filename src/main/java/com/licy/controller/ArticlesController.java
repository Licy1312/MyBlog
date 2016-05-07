package com.licy.controller;

import com.licy.service.IArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
@Controller
public class ArticlesController {
    @Autowired
    private IArticlesService articlesService;
    @RequestMapping("/essays")
    public String toEssays(){
        return "essays";
    }
}
