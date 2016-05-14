package com.licy.controller;

import com.licy.model.Messages;
import com.licy.service.IMessagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2016/5/4 0004.
 */
@Controller
public class MessagesController {
    @Autowired
    private IMessagesService messagesService;

    @ResponseBody
    @RequestMapping("/saveMessage")
    public String saveMessage(String title,String content){
        Messages message = new Messages(title,content);
        messagesService.add(message);
        return "success";
    }
    @RequestMapping("/test")
    public String test(){

        return "manager/test";
    }
}
