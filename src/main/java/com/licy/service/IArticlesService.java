package com.licy.service;

import com.licy.model.Articles;

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
}
