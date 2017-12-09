package com.fb.dao;

import com.fb.entity.Post;
import com.fb.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface AdminDao {
    List<Map<String,Object>> selectAdmin(@Param("data") Map<String, String> data);

    void addUser(User user);

    List<Map<String,Object>> showUserInfo();

    void delUser(@Param("id") String id);

    List<Map<String,Object>> showUserInfoById(@Param("id") String id);

    void updateUser(User user);

    List<Map<String,Object>> showNewsList();

    void updateNewsStatus(@Param("list") String[] idList);

    List<Map<String,Object>> searchNewsOnUpdate(@Param("id") String id);

    void subUpdateInfo(Post post);

    void delNews(@Param("id") String id);

    List<Map<String,Object>> getAllNews();

    Integer amountOfUsers();

    Integer getUserMessageNumber();

    void editUser(User user);
}
