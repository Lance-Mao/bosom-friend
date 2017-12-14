package com.fb.service;
import java.util.List;
import java.util.Map;

import com.fb.entity.Post;
import com.fb.util.PageUtil;
import com.fb.util.SearchUtils;
import org.omg.CORBA.Object;

public interface PostService{



    Post selectPostByObj(Post obj);

    Post selectPostById(Integer id);

    int insertPost(Post value);

    int insertNonEmptyPost(Post value);

    int deletePostById(Integer id);


    int updatePostById(Post enti);

    int updateNonEmptyPostById(Post enti);


	List<Map<String,Object>> selectPostByUserName(String userName);

    List<Map<String,Object>> selectPostOfAll();

    List<Map<String,Object>> tabToShowPosts(PageUtil pageUtil);

    List<Map<String,Object>> searchYouOtherHalf(SearchUtils searchUtils);
}