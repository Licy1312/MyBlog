package com.licy.dao;

import com.licy.model.Notes;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("notesDao")
public class NotesDao extends BaseDao<Notes> implements INotesDao {
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Inject
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    @Override
    public List<Notes> get(String hql){
        Query query = getSession().createQuery(hql);
        return query.list();
    }
    @Override
    public List<Notes> getAll() {
        String hql = "From Notes";
        return this.get(hql);
    }
    @Override
    public int update(int note_id) {
//        String hql = "UPDATE  Notes set Notes.num WHERE note_id="+note_id;
        String sql ="update notes set num=(num+1) where note_id="+note_id;
        Query query = getSession().createSQLQuery(sql);
        return query.executeUpdate();
    }
}
