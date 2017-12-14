package com.fb.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fb.dao.PostDao;
import com.fb.entity.Post;
import com.fb.service.PostService;
import com.fb.util.PageUtil;
import com.fb.util.SearchUtils;
import org.omg.CORBA.Object;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PostServiceImpl implements PostService{
    @Autowired
    private PostDao postDao;
    @Override
    public Post selectPostByObj(Post obj){
        return postDao.selectPostByObj(obj);
    }
    @Override
    public Post selectPostById(Integer id){
        return postDao.selectPostById(id);
    }
    @Override
    public int insertPost(Post value){
        return postDao.insertPost(value);
    }
    @Override
    public int insertNonEmptyPost(Post value){
        return postDao.insertNonEmptyPost(value);
    }
    @Override
    public int deletePostById(Integer id){
        return postDao.deletePostById(id);
    }
    @Override
    public int updatePostById(Post enti){
        return postDao.updatePostById(enti);
    }
    @Override
    public int updateNonEmptyPostById(Post enti){
        return postDao.updateNonEmptyPostById(enti);
    }

    @Override
    public List<Map<String, Object>> selectPostByUserName(String userName) {
        return postDao.selectPostByUserName(userName);
    }

    @Override
    public List<Map<String, Object>> selectPostOfAll() {
        return postDao.selectPostOfAll();
    }

    @Override
    public List<Map<String, Object>> tabToShowPosts(PageUtil pageUtil) {
        Map<String, Integer> data = new HashMap<>();
        data.put("start",(pageUtil.getCurrentIndex()-1)*pageUtil.getPageSize());
        data.put("pageSize", pageUtil.getPageSize());
        return postDao.tabToShowPosts(data);
    }

    @Override
    public List<Map<String, Object>> searchYouOtherHalf(SearchUtils searchUtils) {
        Map<String, String> data = new HashMap<>();
        data.put("userName", searchUtils.getUserName());
        data.put("postTitleName", searchUtils.getPostTitleName());
        return postDao.searchYouOtherHalf(data);
    }

    public PostDao getPostDao() {
        return this.postDao;
    }

    public void setPostDao(PostDao postDao) {
        this.postDao = postDao;
    }

}