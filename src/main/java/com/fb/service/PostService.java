package com.fb.service;
import java.util.List;
import com.fb.entity.Post;
import com.fb.common.Assist;
public interface PostService{
	/**
	 * 获得Post数据的总行数,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    long getPostRowCount(Assist assist);
	/**
	 * 获得Post数据集合,可以通过辅助工具Assist进行条件查询,如果没有条件则传入null
	 * @param assist
	 * @return
	 */
    List<Post> selectPost(Assist assist);
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
	 * @param assist
	 * @return
	 */
    int deletePost(Assist assist);
	/**
	 * 通过Post的id更新Post中的数据,包括null值
	 * @param enti
	 * @return
	 */
    int updatePostById(Post enti);
 	/**
	 * 通过辅助工具Assist的条件更新Post中的数据,包括null值
	 * @param value
	 * @param assist
	 * @return
	 */
    int updatePost(Post value,  Assist assist);
	/**
	 * 通过Post的id更新Post中属性不为null的数据
	 * @param enti
	 * @return
	 */
    int updateNonEmptyPostById(Post enti);
 	/**
	 * 通过辅助工具Assist的条件更新Post中属性不为null的数据
	 * @param value
	 * @param assist
	 * @return
	 */
    int updateNonEmptyPost(Post value, Assist assist);
}