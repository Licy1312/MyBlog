package com.licy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2016/5/3 0003.
 */
@Entity
@Table(name = "picture")
public class Picture {
    private int pic_id;
    private int art_id;
    private String path;
    @Id
    @GeneratedValue
    public int getId() {
        return pic_id;
    }

    public void setId(int pic_id) {
        this.pic_id = pic_id;
    }

    public int getArt_id() {
        return art_id;
    }

    public void setArt_id(int art_id) {
        this.art_id = art_id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
    public Picture(int art_id, String path) {
        this.art_id = art_id;
        this.path = path;
    }
}
