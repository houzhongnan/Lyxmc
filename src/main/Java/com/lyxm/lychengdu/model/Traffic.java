package com.lyxm.lychengdu.model;

public class Traffic {
    private Integer id;
    private String t_name;
    private String t_image;
    private Integer t_days;
    private Integer t_price;
    private String t_introduce;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_image() {
        return t_image;
    }

    public void setT_image(String t_image) {
        this.t_image = t_image;
    }

    public Integer getT_days() {
        return t_days;
    }

    public void setT_days(Integer t_days) {
        this.t_days = t_days;
    }

    public Integer getT_price() {
        return t_price;
    }

    public void setT_price(Integer t_price) {
        this.t_price = t_price;
    }

    public String getT_introduce() {
        return t_introduce;
    }

    public void setT_introduce(String t_introduce) {
        this.t_introduce = t_introduce;
    }
}
