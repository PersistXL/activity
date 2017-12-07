package com.eu.persistxl.activeity.entity;

public class EvaluateBean {
    private int e_userid;
    private String e_motif;
    private String e_theme;
    private String e_date;
    private String e_img;

    @Override
    public String toString() {
        return "EvaluateBean{" +
                "e_userid=" + e_userid +
                ", e_motif='" + e_motif + '\'' +
                ", e_theme='" + e_theme + '\'' +
                ", e_date='" + e_date + '\'' +
                ", e_img='" + e_img + '\'' +
                '}';
    }

    public int getE_userid() {
        return e_userid;
    }

    public void setE_userid(int e_userid) {
        this.e_userid = e_userid;
    }

    public String getE_motif() {
        return e_motif;
    }

    public void setE_motif(String e_motif) {
        this.e_motif = e_motif;
    }

    public String getE_theme() {
        return e_theme;
    }

    public void setE_theme(String e_theme) {
        this.e_theme = e_theme;
    }

    public String getE_date() {
        return e_date;
    }

    public void setE_date(String e_date) {
        this.e_date = e_date;
    }

    public String getE_img() {
        return e_img;
    }

    public void setE_img(String e_img) {
        this.e_img = e_img;
    }
}
