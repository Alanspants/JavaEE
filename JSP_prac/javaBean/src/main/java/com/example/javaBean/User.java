package com.example.javaBean;

import java.io.Serializable;

public class User implements Serializable {


    int userid;
    String username;

    public User() {
        this.userid = 0;
        this.username = "";
    }

    public User(int userid, String username) {
        this.userid = userid;
        this.username = username;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
