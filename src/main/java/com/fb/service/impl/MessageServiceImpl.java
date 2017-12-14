package com.fb.service.impl;

import com.fb.service.MessageService;
import com.fb.dao.MessageDao;
import com.fb.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {
    @Autowired
    private MessageDao messageDao;
    @Override
    public Message selectMessageByObj(Message obj){
        return messageDao.selectMessageByObj(obj);
    }
    @Override
    public Message selectMessageById(Integer id){
        return messageDao.selectMessageById(id);
    }
    @Override
    public int insertMessage(Message value){
        return messageDao.insertMessage(value);
    }
    @Override
    public int insertNonEmptyMessage(Message value){
        return messageDao.insertNonEmptyMessage(value);
    }
    @Override
    public int deleteMessageById(Integer id){
        return messageDao.deleteMessageById(id);
    }
    @Override
    public int updateMessageById(Message enti){
        return messageDao.updateMessageById(enti);
    }
    @Override
    public int updateNonEmptyMessageById(Message enti){
        return messageDao.updateNonEmptyMessageById(enti);
    }

    public MessageDao getMessageDao() {
        return this.messageDao;
    }

    public void setMessageDao(MessageDao messageDao) {
        this.messageDao = messageDao;
    }

}