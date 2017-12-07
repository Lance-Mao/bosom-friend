package com.fb.dao;

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
}
