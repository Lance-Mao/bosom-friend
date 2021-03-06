package com.fb.service.impl;

import com.fb.dao.AdminDao;
import com.fb.entity.Post;
import com.fb.entity.User;
import com.fb.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Override
    public List<Map<String, Object>> selectAdmin(String userName, String passWord) {
        Map<String, String> data = new HashMap<>();
        data.put("userName", userName);
        data.put("passWord", passWord);

        return adminDao.selectAdmin(data);
    }

    @Override
    public void addUser(User user) {
        adminDao.addUser(user);
    }

    @Override
    public List<Map<String, Object>> showUserInfo() {
        return adminDao.showUserInfo();
    }

    @Override
    public void delUser(String id) {
        adminDao.delUser(id);
    }

    @Override
    public List<Map<String, Object>> showUserInfoById(String id) {
        return adminDao.showUserInfoById(id);
    }

    @Override
    public void updateUser(User user) {
        adminDao.updateUser(user);
    }

    @Override
    public List<Map<String, Object>> showNewsList() {
        return adminDao.showNewsList();
    }

    @Override
    public void updateNewsStatus(String[] idList) {
        adminDao.updateNewsStatus(idList);
    }

    @Override
    public List<Map<String, Object>> searchNewsOnUpdate(String id) {
        return adminDao.searchNewsOnUpdate(id);
    }

    @Override
    public void subUpdateInfo(Post post) {
        adminDao.subUpdateInfo(post);
    }

    @Override
    public void delNews(String id) {
        adminDao.delNews(id);
    }

    @Override
    public List<Map<String, Object>> getAllNews() {
        return adminDao.getAllNews();
    }

    @Override
    public Integer amountOfUsers() {
        return adminDao.amountOfUsers();
    }

    @Override
    public Integer getUserMessageNumber() {
        return adminDao.getUserMessageNumber();
    }

    @Override
    public void editUser(User user) {
        adminDao.editUser(user);
    }
}
