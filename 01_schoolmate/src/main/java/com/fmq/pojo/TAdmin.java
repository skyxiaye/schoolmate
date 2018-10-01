package com.fmq.pojo;

public class TAdmin {
    private String adminname;

    private String adminpsw;

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname == null ? null : adminname.trim();
    }

    public String getAdminpsw() {
        return adminpsw;
    }

    public void setAdminpsw(String adminpsw) {
        this.adminpsw = adminpsw == null ? null : adminpsw.trim();
    }
}