package com.fb.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface AdminDao {
    List<Map<String,Object>> selectAdmin(@Param("data") Map<String, String> data);
}
