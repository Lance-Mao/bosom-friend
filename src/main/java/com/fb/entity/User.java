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
    public User() {
        super();
    }
    public User(Integer id,String userCount,String userName,String userPass,String phone,String sex,String birthday,String job) {
        super();
        this.id = id;
        this.userCount = userCount;
        this.userName = userName;
        this.userPass = userPass;
        this.phone = phone;
        this.sex = sex;
        this.birthday = birthday;
        this.job = job;
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

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userCount='" + userCount + '\'' +
                ", userName='" + userName + '\'' +
                ", userPass='" + userPass + '\'' +
                ", phone='" + phone + '\'' +
                ", sex=" + sex +
                ", birthday=" + birthday +
                ", job='" + job + '\'' +
                '}';
    }
}
