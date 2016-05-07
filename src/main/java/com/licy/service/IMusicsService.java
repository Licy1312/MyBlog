package com.licy.service;


import com.licy.model.Musics;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
public interface IMusicsService {
    //获取所有的文章信息
    public Musics getArticle();
    //根据文章id获取文章信息
    public Musics getArticleById(int id);
    //添加一篇新的文章
    public void addArticle(Musics music);
    //更新一篇文章
    public void updaterticle(Musics music);
}
