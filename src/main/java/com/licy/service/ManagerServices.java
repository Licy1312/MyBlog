package com.licy.service;

import com.licy.dao.IArticlesDao;
import com.licy.dao.INotesDao;
import com.licy.model.Articles;
import com.licy.model.Notes;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Service("managerService")
public class ManagerServices implements IManagerService {
    private INotesDao notesDao;
    private IArticlesDao articlesDao;

    @Inject
    public void setMessagesDao(INotesDao notesDao) {
        this.notesDao   = notesDao;
    }
    @Inject
    public void setArticlesDao(IArticlesDao articlesDao){
        this.articlesDao = articlesDao;
    }
    @Override
    public void add(Notes notes) {
        notesDao.add(notes);
    }
    /*创建一个新的笔记*/
    @Override
    public void save(String noteName){
        Timestamp create_time =  new Timestamp(new Date().getTime());
        Notes note = new Notes(noteName,create_time);
        add(note);
    }
    @Override
    public List<Notes> getAll(){
        return notesDao.getAll();
    }
    @Override
    public List<Articles> getByNoteId(int id){
        return articlesDao.getNoteById(id);
    }

    @Override
    public boolean saveArticle(int note_id, String title, String content) {
        //首先保存文字
        Articles article =  new Articles(new Timestamp(new Date().getTime()),title,content,note_id);
        articlesDao.add(article);
        //更新目录表对应的记录
        if(notesDao.update(note_id)>0)
            return true;
        return false;
    }

}
