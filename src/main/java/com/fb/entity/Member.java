package com.fb.entity;

public class Member {
    private String userName;
    private String userEmail;
    private String userSex;
    private String userStatus;
    private String userGrade;
    private String userEndTime;

    public Member() {
    }

    public Member(String userName, String userEmail, String userSex, String userStatus, String userGrade, String userEndTime) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userSex = userSex;
        this.userStatus = userStatus;
        this.userGrade = userGrade;
        this.userEndTime = userEndTime;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public String getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(String userGrade) {
        this.userGrade = userGrade;
    }

    public String getUserEndTime() {
        return userEndTime;
    }

    public void setUserEndTime(String userEndTime) {
        this.userEndTime = userEndTime;
    }

    @Override
    public String toString() {
        return "Member{" +
                "userName='" + userName + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userSex='" + userSex + '\'' +
                ", userStatus='" + userStatus + '\'' +
                ", userGrade='" + userGrade + '\'' +
                ", userEndTime='" + userEndTime + '\'' +
                '}';
    }
}
