package com.fb.dao;


import com.fb.entity.Message;
import com.fb.entity.User;
import org.apache.ibatis.annotations.Param;
import org.omg.CORBA.Object;

import java.util.List;
import java.util.Map;

public interface UserDao{
    List<User> selectUser(User user);

    User selectUserByObj(User obj);

    User selectUserById(Integer id);

    int insertUser(User value);

    int insertNonEmptyUser(User value);

    int deleteUserById(Integer id);


    int updateUserById(User enti);


    int updateNonEmptyUserById(User enti);

    List<Map<String,Object>> selectUserByUserName(@Param("userName") String userName);

	void updateUserInfo(User user);

    List<Map<String,Object>> selectUserInfo(String userName);

    void leaveMessage(Message message);

    List<Map<String,java.lang.Object>> getLeaveMessage();
}