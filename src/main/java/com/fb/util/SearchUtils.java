package com.fb.util;

public class SearchUtils {
    private String userName;
    private String postTitleName;

    public SearchUtils() {
    }

    public SearchUtils(String userName, String postTitleName) {
        this.userName = userName;
        this.postTitleName = postTitleName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPostTitleName() {
        return postTitleName;
    }

    public void setPostTitleName(String postTitleName) {
        this.postTitleName = postTitleName;
    }

    @Override
    public String toString() {
        return "SearchUtils{" +
                "userName='" + userName + '\'' +
                ", postTitleName='" + postTitleName + '\'' +
                '}';
    }
}
