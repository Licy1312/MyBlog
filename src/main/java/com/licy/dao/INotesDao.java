package com.licy.dao;

import com.licy.model.Notes;

import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
public interface INotesDao extends IBaseDao<Notes> {
    public List<Notes> getAll();
}
