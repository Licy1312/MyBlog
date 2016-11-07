package com.licy.dao;

import com.licy.model.Articles;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("articlesDao")
public class ArticlesDao extends BaseDao<Articles> implements IArticlesDao {

    @Override
    public List<Articles> getNoteById(int id) {
        String hql = "From Articles a where a.note_id="+id;
        return this.get(hql);
    }
    /*根据获取所有记录*/
    @Override
    public List<Articles> getAllArticle() {
        String hql = "From Articles";
        return this.get(hql);
    }
    /*获取最近更新的前十条记录*/
    @Override
    public List<Articles> getProArticle() {
        String hql = "From Articles a ORDER BY a.update_time DESC";
        return this.getPage(hql,0,9);
    }
    /*获取最近添加的前五条记录*/
    @Override
    public List<Articles> getRecentFive() {
        String hql = "From Articles a ORDER BY a.create_time DESC";
        return this.getPage(hql,0,5);
    }
    /*获取点击率最高的前10条记录*/
    @Override
    public List<Articles> getHitsTen() {
        String hql = "FROM Articles a ORDER BY a.hits DESC";
        return this.getPage(hql,0,9);
    }

}
