package com.lyxm.lychengdu.model;

import java.util.Date;

public class Customer {
    private  Integer c_id;
    private  String c_user;
    private  String c_name;
    private  String c_pass;
    private Date c_time;
    private  Date c_years;
private  String c_sign;

    public String getC_sign() {
        return c_sign;
    }

    public void setC_sign(String c_sign) {
        this.c_sign = c_sign;
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public String getC_user() {
        return c_user;
    }

    public void setC_user(String c_user) {
        this.c_user = c_user;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getC_pass() {
        return c_pass;
    }

    public void setC_pass(String c_pass) {
        this.c_pass = c_pass;
    }

    public Date getC_time() {
        return c_time;
    }

    public void setC_time(Date c_time) {
        this.c_time = c_time;
    }

    public Date getC_years() {
        return c_years;
    }

    public void setC_years(Date c_years) {
        this.c_years = c_years;
    }
}
