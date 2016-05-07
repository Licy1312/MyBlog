package com.licy.service;

import com.licy.dao.IMusicsDao;
import com.licy.model.Musics;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2016/5/7 0007.
 */
@Service("musicsService")
public class MusicsService implements IMusicsService {
    @Autowired
    private IMusicsDao musicsDao;
    @Override
    public Musics getArticle() {
        return null;
    }

    @Override
    public Musics getArticleById(int id) {
        return null;
    }

    @Override
    public void addArticle(Musics music) {

    }

    @Override
    public void updaterticle(Musics music) {

    }
}
