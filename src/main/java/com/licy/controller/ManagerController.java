package com.licy.controller;

import com.licy.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Lingling on 2016/10/29.
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    @Autowired
    private IManagerService managerService;

    @RequestMapping("/login")
    public String test(){
        return "manager/login";
    }
    @RequestMapping("/home")
    public String home(Model model){
        model.addAttribute("notes",managerService.getAll());
        return "manager/home";
    }
    @RequestMapping("/saveMenu")
    public String saveMenu(String noteName){
        managerService.save(noteName);
        return "redirect:/manager/home";
    }
    @RequestMapping("/menu/{id}")
    public String getNote(@PathVariable("id") int id ,Model model){
        model.addAttribute("tempNotes",managerService.getByNoteId(id));
        return "manager/notes";
    }
    @RequestMapping("/saveNote")
    public String saveNote(String noteId,String article_name,String content){

        return "success";
    }
    @RequestMapping("/editNote")
    public String editNote(){
        return "manager/editNote";
    }
}
