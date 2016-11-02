package com.licy.controller;

import com.licy.service.IManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
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
    public void upload (HttpServletRequest request, HttpServletResponse response){
        response.setContentType("textml;charset=UTF-8");
        try {
            request.setCharacterEncoding("UTF-8");
            Part part = request.getPart("fileName");// myFileName是文件域的name属性值
            // 文件类型限制
            String[] allowedType = { "image/bmp", "image/gif", "image/jpeg", "image/png" };
            boolean allowed = Arrays.asList(allowedType).contains(part.getContentType());
            if (!allowed) {
                response.getWriter().write("error|不支持的类型");
                return;
            }
            // 图片大小限制
            if (part.getSize() > 5 * 1024 * 1024) {
                response.getWriter().write("error|图片大小不能超过5M");
                return;
            }
            // 包含原始文件名的字符串
            String fi = part.getHeader("content-disposition");
            // 提取文件拓展名
            String fileNameExtension = fi.substring(fi.indexOf("."), fi.length() - 1);
            // 生成实际存储的真实文件名
            String realName = UUID.randomUUID().toString() + fileNameExtension;
            // 图片存放的真实路径
//            String realPath = this.getServletContext().getRealPath("/files") + "/" + realName;
//            // 将文件写入指定路径下
//            part.write(realPath);

            // 返回图片的URL地址
            response.getWriter().write(request.getContextPath() + "/files/" + realName);
        } catch (Exception e) {
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
