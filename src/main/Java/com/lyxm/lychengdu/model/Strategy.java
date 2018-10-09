package com.lyxm.lychengdu.model;

import javax.xml.crypto.Data;

public class Strategy {
    private Integer id;
    private String s_name;
    private String s_place;
    private String s_food;
    private String s_image;
    private Data s_createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getS_place() {
        return s_place;
    }

    public void setS_place(String s_place) {
        this.s_place = s_place;
    }

    public String getS_food() {
        return s_food;
    }

    public void setS_food(String s_food) {
        this.s_food = s_food;
    }

    public String getS_image() {
        return s_image;
    }

    public void setS_image(String s_image) {
        this.s_image = s_image;
    }

    public Data getS_createTime() {
        return s_createTime;
    }

    public void setS_createTime(Data s_createTime) {
        this.s_createTime = s_createTime;
    }
}
