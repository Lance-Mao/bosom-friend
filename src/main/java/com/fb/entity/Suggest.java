package com.fb.entity;
public class Suggest {
    private Integer id;
    private Integer userId;
    private String content;
    private java.util.Date date;
    public Suggest() {
        super();
    }
    public Suggest(Integer id,Integer userId,String content,java.util.Date date) {
        super();
        this.id = id;
        this.userId = userId;
        this.content = content;
        this.date = date;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public java.util.Date getDate() {
        return this.date;
    }

    public void setDate(java.util.Date date) {
        this.date = date;
    }

}
