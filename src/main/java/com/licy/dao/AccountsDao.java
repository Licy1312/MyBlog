package com.licy.dao;

import com.licy.model.Accounts;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;
import java.util.List;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("accountsDao")
public class AccountsDao extends BaseDao<Accounts> implements IAccountsDao {
    @Override
    public Accounts loginUser(String username, String password) {
        String hql ="From Accounts a where a.username=:name and a.password=:pwd";
        Query query = getSession().createQuery(hql);
        query.setString("name",username);
        query.setString("pwd",password);
        List<Accounts> list = query.list();
        if(list.size()>0){
            Accounts user = (Accounts) query.list().get(0);
            return user;
        }
        return null;
    }
}
