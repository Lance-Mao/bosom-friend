package com.fb.entity;
public class Friend {
    private Integer id;
    private Integer userId;
    private Integer friendId;
    public Friend() {
        super();
    }
    public Friend(Integer id,Integer userId,Integer friendId) {
        super();
        this.id = id;
        this.userId = userId;
        this.friendId = friendId;
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

}
