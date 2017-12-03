package com.fb.entity;

public class Message {
    private Integer id;
    private String userId;
    private String friendId;
    private String content;
    private String email;
    private String date;

    public Message() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFriendId() {
        return friendId;
    }

    public void setFriendId(String friendId) {
        this.friendId = friendId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", friendId='" + friendId + '\'' +
                ", content='" + content + '\'' +
                ", email='" + email + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
