package com.licy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2016/4/30 0030.
 */
@Entity
@Table(name = "messages")
public class Messages {
    private int id;
    private String title;
    private String author;
    private String content;
    private Timestamp create_time;
    private int pid;
    private int type;

    public Messages(int id, String title, String content) {
        this.id = id;
        this.title = title;
        this.content = content;
    }

    public Messages(String author,String title, String content,Timestamp create_time) {
        this.author = author;
        this.title = title;
        this.content = content;
        this.create_time = create_time;
    }
    public Messages(String author,String title, String content,Timestamp create_time,int type) {
        this.author = author;
        this.title = title;
        this.content = content;
        this.create_time = create_time;
        this.type = type;
    }

    public Messages(){
    }
    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
