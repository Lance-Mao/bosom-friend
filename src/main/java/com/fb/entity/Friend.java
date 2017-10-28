package com.fb.entity;
public class Friend {
    private Integer id;
    private String userId;
    private String friendId;

    public Friend(Integer id, String userId, String friendId) {
        this.id = id;
        this.userId = userId;
        this.friendId = friendId;
    }

    public Friend(String userId, String friendId) {
        this.userId = userId;
        this.friendId = friendId;
    }

    public Friend() {
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

    @Override
    public String toString() {
        return "Friend{" +
                "id=" + id +
                ", userId='" + userId + '\'' +
                ", friendId='" + friendId + '\'' +
                '}';
    }
}
