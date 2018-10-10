package com.lyxm.lychengdu.model;


import java.util.Date;

public class Admin {
    private Integer id;
    private String a_username;
    private String a_password;

    private String a_name;
    private String a_image;
    private Date a_createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getA_username() {
        return a_username;
    }

    public void setA_username(String a_username) {
        this.a_username = a_username;
    }

    public String getA_password() {
        return a_password;
    }

    public void setA_password(String a_password) {
        this.a_password = a_password;
    }

    public String getA_name() {
        return a_name;
    }

    public void setA_name(String a_name) {
        this.a_name = a_name;
    }

    public String getA_image() {
        return a_image;
    }

    public void setA_image(String a_image) {
        this.a_image = a_image;
    }

    public Date getA_createTime() {
        return a_createTime;
    }

    public void setA_createTime(Date a_createTime) {
        this.a_createTime = a_createTime;
    }
}
