package com.licy.dao;

import com.licy.model.Accounts;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
public interface IAccountsDao extends IBaseDao<Accounts> {
    public Accounts loginUser(String username,String password);
}
