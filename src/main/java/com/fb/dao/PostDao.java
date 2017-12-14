package com.fb.dao;
import com.fb.entity.Post;
import java.util.List;
import java.util.Map;

import com.fb.util.PageUtil;
import com.fb.util.SearchUtils;
import org.apache.ibatis.annotations.Param;
import org.omg.CORBA.Object;

public interface PostDao{

	/**
	 * 获得一个Post对象,以参数Post对象中不为空的属性作为条件进行查询
	 * @param obj
	 * @return
	 */
    Post selectPostByObj(Post obj);
	/**
	 * 通过Post的id获得Post对象
	 * @param id
	 * @return
	 */
    Post selectPostById(Integer id);
	/**
	 * 插入Post到数据库,包括null值
	 * @param value
	 * @return
	 */
    int insertPost(Post value);
	/**
	 * 插入Post中属性值不为null的数据到数据库
	 * @param value
	 * @return
	 */
    int insertNonEmptyPost(Post value);
	/**
	 * 通过Post的id删除Post
	 * @param id
	 * @return
	 */
    int deletePostById(Integer id);
	/**
	 * 通过辅助工具Assist的条件删除Post
	 * @param
	 * @return
	 */

    int updatePostById(Post enti);

	/**
	 * 通过Post的id更新Post中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyPostById(Post enti);

	List<Map<String,Object>> selectPostByUserName(@Param("userName") String userName);

	List<Map<String,Object>> selectPostOfAll();

    List<Map<String,Object>> tabToShowPosts(Map<String, Integer> pageUtil);

    List<Map<String,Object>> searchYouOtherHalf(Map<String, String> searchUtils);
}