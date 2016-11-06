package com.licy.tool;

import com.licy.model.Articles;

import java.util.List;

/**
 * Created by Lingling on 2016/11/6.
 */
public class Menu {
    public int m_id;
    public String m_name;
    public int m_num;
    public List<Articles> list_article;

    public Menu(int m_id, String m_name, int m_num) {
        this.m_id = m_id;
        this.m_name = m_name;
        this.m_num = m_num;

    }

    public int getM_id() {
        return m_id;
    }

    public void setM_id(int m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public int getM_num() {
        return m_num;
    }

    public void setM_num(int m_num) {
        this.m_num = m_num;
    }

    public List<Articles> getList_article() {
        return list_article;
    }

    public void setList_article(List<Articles> list_article) {
        this.list_article = list_article;
    }
}
