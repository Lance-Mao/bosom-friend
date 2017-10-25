package com.fb.entity;
public class User {
    private Integer id;
    private String userCount;
    private String userName;
    private String userPass;
    private String phone;
    private String sex;
    private String birthday;
    private String job;
    private String living;
    private String signature;
    private String userImg;
    public User() {
        super();
    }

    public User(Integer id, String userCount, String userName, String userPass, String phone, String sex, String birthday, String job, String living, String signature, String userImg) {
        this.id = id;
        this.userCount = userCount;
        this.userName = userName;
        this.userPass = userPass;
        this.phone = phone;
        this.sex = sex;
        this.birthday = birthday;
        this.job = job;
        this.living = living;
        this.signature = signature;
        this.userImg = userImg;
    }

    public String getLiving() {
        return living;
    }

    public void setLiving(String living) {
        this.living = living;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserCount() {
        return this.userCount;
    }

    public void setUserCount(String userCount) {
        this.userCount = userCount;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPass() {
        return this.userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return this.sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getJob() {
        return this.job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userCount='" + userCount + '\'' +
                ", userName='" + userName + '\'' +
                ", userPass='" + userPass + '\'' +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday='" + birthday + '\'' +
                ", job='" + job + '\'' +
                ", living='" + living + '\'' +
                ", signature='" + signature + '\'' +
                ", userImg='" + userImg + '\'' +
                '}';
    }
}
