package com.licy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Timestamp;

/**
 * Created by Lingling on 2016/10/30.
 */
@Entity
@Table(name = "notes")
public class Notes {
    private int note_id;
    private String note_name;
    private Timestamp create_time;
    private String url_path;
    private int num;


    @Id
    @GeneratedValue
    public int getNote_id() {
        return note_id;
    }

    public void setNote_id(int note_id) {
        this.note_id = note_id;
    }

    public String getNote_name() {
        return note_name;
    }

    public void setNote_name(String note_name) {
        this.note_name = note_name;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public String getUrl_path() {
        return url_path;
    }

    public void setUrl_path(String url_path) {
        this.url_path = url_path;
    }
    public Notes(){
    }
    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public Notes(String note_name, Timestamp create_time) {
        this.note_name = note_name;
        this.create_time = create_time;
    }
}
