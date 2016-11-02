package com.licy.controller;

import com.licy.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;


/**
 * Created by Lingling on 2016/10/29.
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    @Autowired
    private IManagerService managerService;
    @Value("${filePath}")
    private String uploadPath;
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
    @ResponseBody
    @RequestMapping("/saveNote")
    public String saveNote(String note_id,String title,String content){
        System.out.println(note_id+title+content);
        return "success";
    }
    @RequestMapping("/upload")
    public void upload (@RequestParam("fileName") CommonsMultipartFile file, HttpServletRequest request, HttpServletResponse response){
            String fileName = file.getOriginalFilename();
            System.out.println("fileName---------->" + file.getOriginalFilename());
        try {
            file.transferTo(new File(uploadPath+fileName));
            // 图片存放的真实路径
            String realPath = request.getServletContext().getRealPath("/upload") + "/" + fileName;

            // 返回图片的URL地址
           // request.getScheme()+":"+request.get
            //${ctx_upload}
            String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/upload/";
            response.getWriter().write(basePath + fileName);
         //   response.getWriter().write(uploadPath+fileName);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    @RequestMapping("/editNote")
    public String editNote(){
        return "manager/editNote";
    }
    @RequestMapping("/me")
    public String about(){
        return "me";
    }
}
