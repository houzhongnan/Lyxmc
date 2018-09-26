package com.lyxm.lychengdu.model;
import java.util.Date;
public class User {
    private Integer id;
    private String u_name;
    private String u_username;
    private String u_password;
    private String u_email;
    private Integer u_phone;
    private Date u_createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_username() {
        return u_username;
    }

    public void setU_username(String u_username) {
        this.u_username = u_username;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public Integer getU_phone() {
        return u_phone;
    }

    public void setU_phone(Integer u_phone) {
        this.u_phone = u_phone;
    }

    public Date getU_createTime() {
        return u_createTime;
    }

    public void setU_createTime(Date u_createTime) {
        this.u_createTime = u_createTime;
    }
}
