package com.lyxm.lychengdu.model;

import java.util.Date;

public class Hot {
    private Integer id;
    private String h_title;
    private String h_introduce;
    private String h_place;
    private String h_name;
    private Integer h_browses;
    private Integer h_support;
    private Date h_createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getH_title() {
        return h_title;
    }

    public void setH_title(String h_title) {
        this.h_title = h_title;
    }

    public String getH_introduce() {
        return h_introduce;
    }

    public void setH_introduce(String h_introduce) {
        this.h_introduce = h_introduce;
    }

    public String getH_place() {
        return h_place;
    }

    public void setH_place(String h_place) {
        this.h_place = h_place;
    }

    public String getH_name() {
        return h_name;
    }

    public void setH_name(String h_name) {
        this.h_name = h_name;
    }

    public Integer getH_browses() {
        return h_browses;
    }

    public void setH_browses(Integer h_browses) {
        this.h_browses = h_browses;
    }

    public Integer getH_support() {
        return h_support;
    }

    public void setH_support(Integer h_support) {
        this.h_support = h_support;
    }

    public Date getH_createTime() {
        return h_createTime;
    }

    public void setH_createTime(Date h_createTime) {
        this.h_createTime = h_createTime;
    }
}
