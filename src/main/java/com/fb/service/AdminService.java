package com.fb.service;

import java.util.List;
import java.util.Map;

public interface AdminService {
    List<Map<String, Object>> selectAdmin(String userName, String passWord);
}
