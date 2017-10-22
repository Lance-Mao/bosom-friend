package com.fb.entity;
public class Post {
    private Integer id;
    private String title;
    private String content;
    private String img;
    private java.util.Date date;
    public Post() {
        super();
    }
    public Post(Integer id,String title,String content,String img,java.util.Date date) {
        super();
        this.id = id;
        this.title = title;
        this.content = content;
        this.img = img;
        this.date = date;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg() {
        return this.img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public java.util.Date getDate() {
        return this.date;
    }

    public void setDate(java.util.Date date) {
        this.date = date;
    }

}
