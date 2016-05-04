package com.licy.dao;

import com.licy.model.Users;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("usersDao")
public class UsersDao extends BaseDao<Users> implements IUsersDao {
}
