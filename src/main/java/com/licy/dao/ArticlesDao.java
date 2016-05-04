package com.licy.dao;

import com.licy.model.Articles;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("articlesDao")
public class ArticlesDao extends BaseDao<Articles> implements IArticlesDao {
}
