package com.licy.controller;

import com.licy.model.Messages;
import com.licy.service.IMessagesService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Controller
public class MessagesController {
    private IMessagesService messagesService;
    @Inject
    public void setMessagesService(IMessagesService messagesService) {
        this.messagesService = messagesService;
    }

    @RequestMapping("/saveMessage")
    public void saveMessage(String title,String content){
        System.out.println(title+"......"+content);
        Messages message = new Messages(title,content);
        messagesService.add(message);
    }
}
