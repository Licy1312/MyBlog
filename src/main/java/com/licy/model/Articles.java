package com.licy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Timestamp;

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
    private String d_topics;
    private String d_content;
    private String d_resources;
    private Timestamp create_time;
    private Timestamp update_time;
    private int note_id;
    private int hits;

    public Articles(int d_id, String d_title, String d_content) {
        this.d_id = d_id;
        this.d_title = d_title;
        this.d_content = d_content;
    }

    public Articles(Timestamp create_time,String d_title, String d_abstract,String d_content,int note_id) {
        this.create_time =create_time;
        this.d_title = d_title;
        this.d_abstract = d_abstract;
        this.d_content = d_content;
        this.note_id = note_id;
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
        return d_topics;
    }

    public void setD_topics(String d_topics) {
        d_topics = d_topics;
    }

    public String getD_content() {
        return d_content;
    }

    public void setD_content(String d_content) {
        d_content = d_content;
    }

    public String getD_resources() {
        return d_resources;
    }

    public void setD_resources(String d_resources) {
        d_resources = d_resources;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public Timestamp getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Timestamp update_time) {
        this.update_time = update_time;
    }

    public int getNote_id() {
        return note_id;
    }

    public void setNote_id(int note_id) {
        this.note_id = note_id;
    }

    public int getHits() {
        return hits;
    }

    public void setHits(int hits) {
        this.hits = hits;
    }
}
