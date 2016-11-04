package com.licy.controller;

import com.licy.model.Articles;
import com.licy.service.IArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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
    /*给首页提供最近5条记录*/
    @ResponseBody
    @RequestMapping("/fileOrder")
    public List<Articles> getProAritcle(){
        return articlesService.getProArticle();
    }
}
