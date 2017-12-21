package com.eu.persistxl.activeity.entity;

/**
 * Created by point on 17-11-29.
 */
public class UserBean {
    private int u_id;
    private String  u_userid;
    private String u_username;
    private String u_password;
    private String u_sex;
    private String u_img;
    private String u_rank;

    @Override
    public String toString() {
        return "UserBean{" +
                "u_id=" + u_id +
                ", u_userid='" + u_userid + '\'' +
                ", u_username='" + u_username + '\'' +
                ", u_password='" + u_password + '\'' +
                ", u_sex='" + u_sex + '\'' +
                ", u_img='" + u_img + '\'' +
                ", u_rank='" + u_rank + '\'' +
                '}';
    }

    public String getU_rank() {
        return u_rank;
    }

    public void setU_rank(String u_rank) {
        this.u_rank = u_rank;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getU_userid() {
        return u_userid;
    }

    public void setU_userid(String u_userid) {
        this.u_userid = u_userid;
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

    public String getU_sex() {
        return u_sex;
    }

    public void setU_sex(String u_sex) {
        this.u_sex = u_sex;
    }

    public String getU_img() {
        return u_img;
    }

    public void setU_img(String u_img) {
        this.u_img = u_img;
    }
}
