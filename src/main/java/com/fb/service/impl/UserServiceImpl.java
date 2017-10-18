package com.fb.service.impl;

import com.fb.service.UserService;
import com.fb.common.Assist;
import com.fb.dao.UserDao;
import com.fb.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public long getUserRowCount(Assist assist){
        return userDao.getUserRowCount(assist);
    }
    @Override
    public List<User> selectUser(User user){
        return userDao.selectUser(user);
    }
    @Override
    public User selectUserByObj(User obj){
        return userDao.selectUserByObj(obj);
    }
    @Override
    public User selectUserById(Integer id){
        return userDao.selectUserById(id);
    }
    @Override
    public int insertUser(User value){
        return userDao.insertUser(value);
    }
    @Override
    public int insertNonEmptyUser(User value){
        return userDao.insertNonEmptyUser(value);
    }
    @Override
    public int deleteUserById(Integer id){
        return userDao.deleteUserById(id);
    }
    @Override
    public int deleteUser(Assist assist){
        return userDao.deleteUser(assist);
    }
    @Override
    public int updateUserById(User enti){
        return userDao.updateUserById(enti);
    }
    @Override
    public int updateUser(User value, Assist assist){
        return userDao.updateUser(value,assist);
    }
    @Override
    public int updateNonEmptyUserById(User enti){
        return userDao.updateNonEmptyUserById(enti);
    }
    @Override
    public int updateNonEmptyUser(User value, Assist assist){
        return userDao.updateNonEmptyUser(value,assist);
    }

    public UserDao getUserDao() {
        return this.userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

}