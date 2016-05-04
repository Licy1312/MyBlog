package com.licy.dao;

import com.licy.model.Accounts;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("accountsDao")
public class AccountsDao extends BaseDao<Accounts> implements IAccountsDao {
}
