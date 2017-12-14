package com.fb.dao;

import com.fb.entity.Message;

public interface MessageDao{

    Message selectMessageByObj(Message obj);

    Message selectMessageById(Integer id);

    int insertMessage(Message value);

    int insertNonEmptyMessage(Message value);

    int deleteMessageById(Integer id);

    int updateMessageById(Message enti);

    int updateNonEmptyMessageById(Message enti);

}