package com.licy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

/**
 * Created by Administrator on 2016/5/1 0001.
 */
@Entity
@Table(name ="articles")
public class Articles {
    private int d_id;
    private int d_type;
    private String d_title;
    private String d_abstract;
    private String d_keywords;
    private String D_topics;
    private String D_content;
    private String D_resources;
    private Date create_time;
    private Date update_time;

    public Articles(int d_id, String d_title, String d_content) {
        this.d_id = d_id;
        this.d_title = d_title;
        D_content = d_content;
    }

    public Articles(String d_title, String d_content) {
        this.d_title = d_title;
        D_content = d_content;
    }
    public Articles(){
    }
    @Id
    @GeneratedValue
    public int getD_id() {
        return d_id;
    }

    public void setD_id(int d_id) {
        this.d_id = d_id;
    }

    public int getD_type() {
        return d_type;
    }

    public void setD_type(int d_type) {
        this.d_type = d_type;
    }

    public String getD_title() {
        return d_title;
    }

    public void setD_title(String d_title) {
        this.d_title = d_title;
    }

    public String getD_abstract() {
        return d_abstract;
    }

    public void setD_abstract(String d_abstract) {
        this.d_abstract = d_abstract;
    }

    public String getD_keywords() {
        return d_keywords;
    }

    public void setD_keywords(String d_keywords) {
        this.d_keywords = d_keywords;
    }

    public String getD_topics() {
        return D_topics;
    }

    public void setD_topics(String d_topics) {
        D_topics = d_topics;
    }

    public String getD_content() {
        return D_content;
    }

    public void setD_content(String d_content) {
        D_content = d_content;
    }

    public String getD_resources() {
        return D_resources;
    }

    public void setD_resources(String d_resources) {
        D_resources = d_resources;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }
}
