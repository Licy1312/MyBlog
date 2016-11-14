package com.licy.service;

import com.licy.model.Articles;
import com.licy.model.Notes;
import com.licy.tool.Menu;

import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
public interface IManagerService {
    public void add(Notes notes);
    public void save(String noteName);
    public List<Notes> getAll();
    public List<Notes> getTenOrder();
    public List<Articles> getByNoteId(int id);
    public List<Menu> getMenu();
    public boolean saveArticle(int note_id,String title,String abs_text,String content);
    public boolean loginUser(String username,String password);
}
