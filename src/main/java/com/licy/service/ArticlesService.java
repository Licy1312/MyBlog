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
    /*根据id获取详细记录*/
    @Override
    public Articles getArticleById(int id) {
        return articlesDao.load(id);
    }
    @Override
    public void addArticle(Articles article) {

    }
    @Override
    public void updaterticle(Articles article) {

    }

    @Override
    public List<Articles> getAllArticle() {
        return articlesDao.getAllArticle();
    }

    @Override
    public List<Articles> getProArticle() {
        return articlesDao.getProArticle();
    }

    @Override
    public List<Articles> getRecentInsert() {
        return articlesDao.getRecentFive();
    }

    @Override
    public List<Articles> gethits() {
        return articlesDao.getHitsTen();
    }

    @Override
    public Articles getRecentNew() {
        return articlesDao.getHitsTen().get(0);
    }
}
