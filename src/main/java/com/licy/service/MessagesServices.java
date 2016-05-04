package com.licy.service;

import com.licy.dao.IMessagesDao;
import com.licy.model.Messages;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Service("MessagesService")
public class MessagesServices implements IMessagesService {
    private IMessagesDao messagesDao;
    @Inject
    public void setMessagesDao(IMessagesDao messagesDao) {
        this.messagesDao = messagesDao;
    }
    @Override
    public void add(Messages message) {
        messagesDao.add(message);
    }


}
