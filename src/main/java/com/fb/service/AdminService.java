package com.fb.service;

import com.fb.entity.User;

import java.util.List;
import java.util.Map;

public interface AdminService {
    List<Map<String, Object>> selectAdmin(String userName, String passWord);

    void addUser(User user);

    List<Map<String,Object>> showUserInfo();

    void delUser(String id);

    List<Map<String,Object>> showUserInfoById(String id);

    void updateUser(User user);
}
