package com.licy.service;

import com.licy.model.Articles;

import java.util.List;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
public interface IArticlesService {
    //获取所有的文章信息
    public Articles getArticle();
    //根据文章id获取文章信息
    public Articles getArticleById(int id);
    //添加一篇新的文章
    public void addArticle(Articles article);
    //更新一篇文章
    public void updaterticle(Articles article);
    //获得所有记录
    public List<Articles> getAllArticle();
    //获得最近更新前10条
    public List<Articles> getProArticle();
    //获得最近添加前5条
    public List<Articles> getRecentInsert();
    //获得最近添加前10条
    public List<Articles> gethits();
    //获得最新的1条
    public Articles getRecentNew();
}
