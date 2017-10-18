package com.fb.service;


import com.fb.common.Assist;
import com.fb.entity.Message;

import java.util.List;

public interface MessageService{
	/**
	 * 获得Message数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getMessageRowCount(Assist assist);
	/**
	 * 获得Message数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Message> selectMessage(Assist assist);
	/**
	 * 获得一个Message对象,以参数Message对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Message selectMessageByObj(Message obj);
	/**
	 * 通过Message的id获得Message对象
	 * @param id
	 * @return
	 */
    Message selectMessageById(Integer id);
	/**
	 * 插入Message到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertMessage(Message value);
	/**
	 * 插入Message中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyMessage(Message value);
	/**
	 * 通过Message的id删除Message
	 * @param id
	 * @return
	 */
    int deleteMessageById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Message
	 * @param assist
	 * @return
	 */
    int deleteMessage(Assist assist);
	/**
	 * 通过Message的id更新Message中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateMessageById(Message enti);
 	/**
	 * 通过辅助工具Assist的条件更新Message中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateMessage(Message value, Assist assist);
	/**
	 * 通过Message的id更新Message中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyMessageById(Message enti);
 	/**
	 * 通过辅助工具Assist的条件更新Message中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyMessage(Message value, Assist assist);
}