package com.fb.dao;


import com.fb.entity.Friend;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
import java.util.Objects;

public interface FriendDao{

    Friend selectFriendByObj(Friend obj);

    Friend selectFriendById(Integer id);

    int insertFriend(Friend value);

    int insertNonEmptyFriend(Friend value);

    int deleteFriendById(Integer id);


    int updateFriendById(Friend enti);


    int updateNonEmptyFriendById(Friend enti);


	List<Map<String, Objects>> selectFriendOfIsFriend(Friend friend);

	List<Map<String,Object>> selectMyFriendAll(@Param("userName") String userName);
}