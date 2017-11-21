package com.fb.service.impl;

import com.fb.dao.AdminDao;
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
}
