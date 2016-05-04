package com.licy.dao;

import com.licy.model.Messages;
import org.springframework.stereotype.Repository;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Repository("messagesDao")
public class MessagesDao extends BaseDao<Messages> implements IMessagesDao {
}
