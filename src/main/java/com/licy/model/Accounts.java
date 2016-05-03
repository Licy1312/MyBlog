package com.licy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2016/5/3 0003.
 */
@Entity
@Table(name = "accounts")
public class Accounts {
    private int id;
    private String username;
    private String password;

    public Accounts(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Accounts(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }
    public Accounts(){

    }
    @Id
    @GeneratedValue
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
