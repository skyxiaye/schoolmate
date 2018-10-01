package com.fmq.pojo;

public class TUser {
    private Integer id;

    private String userName;

    private String userPassword;

    private String userMajor;

    private String userGarde;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserMajor() {
        return userMajor;
    }

    public void setUserMajor(String userMajor) {
        this.userMajor = userMajor == null ? null : userMajor.trim();
    }

    public String getUserGarde() {
        return userGarde;
    }

    public void setUserGarde(String userGarde) {
        this.userGarde = userGarde == null ? null : userGarde.trim();
    }
}