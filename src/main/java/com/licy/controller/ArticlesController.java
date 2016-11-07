package com.licy.controller;

import com.licy.model.Articles;
import com.licy.model.Notes;
import com.licy.service.IArticlesService;
import com.licy.service.IManagerService;
import com.licy.tool.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    private IManagerService managerService;
    @RequestMapping("/essays")
    public String toEssays(){
        return "essays";
    }
    @RequestMapping("/detail")
    public String toArticle(){
        return "detail";
    }
    @RequestMapping("/detail/{id}")
    public String toDeatilArticle(){
        return "detail";
    }
    @ResponseBody
    @RequestMapping("/orders")
    public List<Articles> getAllAritcle(){
        return articlesService.getAllArticle();
    }
    /*给首页提供最近更新10条记录*/
    @ResponseBody
    @RequestMapping("/nineOrder")
    public List<Articles> getProAritcle(){
        return articlesService.getProArticle();
    }
    /*给首页提供最近添加5条记录*/
    @ResponseBody
    @RequestMapping("/fiveOrder")
    public List<Articles> getRecentAritcle(){
        return articlesService.getRecentInsert();
    }
    /*给首页提供点击率最高的10条记录*/
    @ResponseBody
    @RequestMapping("/nineHits")
    public List<Articles> getHitsAritcle(){
        return articlesService.gethits();
    }
    @ResponseBody
    @RequestMapping("/order/{id}")
    public Articles getOneAritcle(@PathVariable("id") int id){
        Articles articles = articlesService.getArticleById(id);
        System.out.println(articles.getCreate_time());
        return articles;
    }
    @ResponseBody
    @RequestMapping("/menus")
    public List<Notes> getAllNotes(){
        return managerService.getTenOrder();
    }

    @ResponseBody
    @RequestMapping("/firstMenu")
    public List<Menu> getFirstMenu(){
        return managerService.getMenu();
    }

    @ResponseBody
    @RequestMapping("/allMenus")
    public List<Menu> getAllMenu(){
        return managerService.getMenu();
    }
    /*根据笔记id获取对应的文章*/
    @ResponseBody
    @RequestMapping("/menuArticle/{id}")
    public List<Articles> getMenuArticle(@PathVariable("id") int id){
        return managerService.getByNoteId(id);
    }
    /*给笔记本页面提供最新的1条记录*/
    @ResponseBody
    @RequestMapping("/newOrder")
    public Articles getNewAritcle(){
        return articlesService.getRecentNew();
    }
}
