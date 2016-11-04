package com.licy.service;

import com.licy.dao.IArticlesDao;
import com.licy.model.Articles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
@Service("articlesService")
public class ArticlesService implements IArticlesService {
    @Autowired
    private IArticlesDao articlesDao;
    @Override
    public Articles getArticle() {
        return null;
    }

    @Override
    public Articles getArticleById(int id) {
        return null;
    }

    @Override
    public void addArticle(Articles article) {

    }
    @Override
    public void updaterticle(Articles article) {

    }

    @Override
    public List<Articles> getProArticle() {
        return articlesDao.getProArticle();
    }
}
