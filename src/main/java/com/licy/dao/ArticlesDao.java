package com.licy.dao;

import com.licy.model.Articles;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("articlesDao")
public class ArticlesDao extends BaseDao<Articles> implements IArticlesDao {
    @Override
    public List<Articles> getNoteById(int id) {
        String hql = "SELECT a.d_id,a.d_title,a.d_content,a.create_time From Articles a where a.note_id="+id;
        return this.get(hql);
    }
}
