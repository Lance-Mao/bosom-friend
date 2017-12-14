package com.fb.service;



import com.fb.entity.Message;
import com.fb.entity.User;
import org.omg.CORBA.Object;

import java.util.List;
import java.util.Map;

public interface UserService{


    List<User> selectUser(User user)throws Exception;

    User selectUserByObj(User obj)throws Exception;

    User selectUserById(Integer id)throws Exception;

    int insertUser(User value)throws Exception;

    int insertNonEmptyUser(User value)throws Exception;

    int deleteUserById(Integer id)throws Exception;

    int updateUserById(User enti)throws Exception;


    int updateNonEmptyUserById(User enti)throws Exception;


	List<Map<String, Object>> selectUserByUserName(String userName);

	void updateUserInfo(User user);

    void leaveMessage(Message message);

    List<Map<String,java.lang.Object>> getLeaveMessage();
}