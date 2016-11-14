package com.licy.service;

import com.licy.dao.IAccountsDao;
import com.licy.dao.IArticlesDao;
import com.licy.dao.INotesDao;
import com.licy.model.Articles;
import com.licy.model.Notes;
import com.licy.tool.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Service("managerService")
public class ManagerServices implements IManagerService {
    private INotesDao notesDao;
    private IArticlesDao articlesDao;
    @Autowired
    private IAccountsDao accountsDao;

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
    public List<Notes> getTenOrder() {
        return notesDao.getTenOrder();
    }
    @Override
    public List<Articles> getByNoteId(int id){
        return articlesDao.getNoteById(id);
    }
    /*获取目录和文章的一个对应关系*/
    @Override
    public List<Menu> getMenu() {
        List<Menu> result = new ArrayList<Menu>();
        //获取所有目录
        List<Notes> list = getAll();
        for(int i=0;i<list.size();i++){
            Menu obj = new Menu(list.get(i).getNote_id(),list.get(i).getNote_name(),list.get(i).getNum());
            if(list.get(i).getNum()>0){
                obj.setList_article(getByNoteId(list.get(i).getNote_id()));
            }
            result.add(obj);
        }
        return result;
    }

    @Override
    public boolean saveArticle(int note_id, String title,String abs_text, String content) {
        //首先保存文字
        Articles article =  new Articles(new Timestamp(new Date().getTime()),title,abs_text,content,note_id);
        articlesDao.add(article);
        //更新目录表对应的记录
        if(notesDao.update(note_id)>0)
            return true;
        return false;
    }
    /*验证用户的身份*/
    @Override
    public boolean loginUser(String username, String password) {
        if(accountsDao.loginUser(username,password)==null){
            return false;
        }
        return true;
    }

}
