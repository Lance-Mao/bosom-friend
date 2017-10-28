package com.fb.dao;


import com.fb.common.Assist;
import com.fb.entity.Friend;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
import java.util.Objects;

public interface FriendDao{
	/**
	 * 获得Friend数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getFriendRowCount(Assist assist);
	/**
	 * 获得Friend数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Friend> selectFriend(Assist assist);
	/**
	 * 获得一个Friend对象,以参数Friend对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Friend selectFriendByObj(Friend obj);
	/**
	 * 通过Friend的id获得Friend对象
	 * @param id
	 * @return
	 */
    Friend selectFriendById(Integer id);
	/**
	 * 插入Friend到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertFriend(Friend value);
	/**
	 * 插入Friend中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyFriend(Friend value);
	/**
	 * 通过Friend的id删除Friend
	 * @param id
	 * @return
	 */
    int deleteFriendById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Friend
	 * @param assist
	 * @return
	 */
    int deleteFriend(Assist assist);
	/**
	 * 通过Friend的id更新Friend中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updateFriendById(Friend enti);
 	/**
	 * 通过辅助工具Assist的条件更新Friend中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateFriend(@Param("enti") Friend value, @Param("assist") Assist assist);
	/**
	 * 通过Friend的id更新Friend中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyFriendById(Friend enti);
 	/**
	 * 通过辅助工具Assist的条件更新Friend中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyFriend(@Param("enti") Friend value, @Param("assist") Assist assist);

	List<Map<String, Objects>> selectFriendOfIsFriend(Friend friend);
}