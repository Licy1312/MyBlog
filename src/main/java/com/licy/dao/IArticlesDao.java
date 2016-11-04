package com.licy.dao;

import com.licy.model.Articles;

import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
public interface IArticlesDao extends IBaseDao<Articles> {
    public List<Articles> getNoteById(int id);
    public List<Articles> getProArticle();
}
