package com.fb.service.impl;


import com.fb.common.Assist;
import com.fb.dao.FriendDao;
import com.fb.entity.Friend;
import com.fb.service.FriendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Service
public class FriendServiceImpl implements FriendService {
    @Autowired
    private FriendDao friendDao;
    @Override
    public long getFriendRowCount(Assist assist){
        return friendDao.getFriendRowCount(assist);
    }
    @Override
    public List<Friend> selectFriend(Assist assist){
        return friendDao.selectFriend(assist);
    }
    @Override
    public Friend selectFriendByObj(Friend obj){
        return friendDao.selectFriendByObj(obj);
    }
    @Override
    public Friend selectFriendById(Integer id){
        return friendDao.selectFriendById(id);
    }
    @Override
    public int insertFriend(Friend value){
        return friendDao.insertFriend(value);
    }
    @Override
    public int insertNonEmptyFriend(Friend value){
        return friendDao.insertNonEmptyFriend(value);
    }
    @Override
    public int deleteFriendById(Integer id){
        return friendDao.deleteFriendById(id);
    }
    @Override
    public int deleteFriend(Assist assist){
        return friendDao.deleteFriend(assist);
    }
    @Override
    public int updateFriendById(Friend enti){
        return friendDao.updateFriendById(enti);
    }
    @Override
    public int updateFriend(Friend value, Assist assist){
        return friendDao.updateFriend(value,assist);
    }
    @Override
    public int updateNonEmptyFriendById(Friend enti){
        return friendDao.updateNonEmptyFriendById(enti);
    }
    @Override
    public int updateNonEmptyFriend(Friend value, Assist assist){
        return friendDao.updateNonEmptyFriend(value,assist);
    }

    @Override
    public List<Map<String, Objects>> selectFriendOfIsFriend(Friend friend) {
        return friendDao.selectFriendOfIsFriend(friend);
    }

    @Override
    public List<Map<String, Object>> selectMyFriendAll(String userName) {
        return friendDao.selectMyFriendAll(userName);
    }

    public FriendDao getFriendDao() {
        return this.friendDao;
    }

    public void setFriendDao(FriendDao friendDao) {
        this.friendDao = friendDao;
    }

}