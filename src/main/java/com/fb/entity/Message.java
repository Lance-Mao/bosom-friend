package com.fb.entity;
public class Message {
    private Integer id;
    private Integer userId;
    private Integer friendId;
    private Integer content;
    private java.util.Date date;
    public Message() {
        super();
    }
    public Message(Integer id,Integer userId,Integer friendId,Integer content,java.util.Date date) {
        super();
        this.id = id;
        this.userId = userId;
        this.friendId = friendId;
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

    public Integer getFriendId() {
        return this.friendId;
    }

    public void setFriendId(Integer friendId) {
        this.friendId = friendId;
    }

    public Integer getContent() {
        return this.content;
    }

    public void setContent(Integer content) {
        this.content = content;
    }

    public java.util.Date getDate() {
        return this.date;
    }

    public void setDate(java.util.Date date) {
        this.date = date;
    }

}
