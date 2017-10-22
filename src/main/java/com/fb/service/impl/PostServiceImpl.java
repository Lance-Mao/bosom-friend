package com.fb.service.impl;
import java.util.List;
import com.fb.dao.PostDao;
import com.fb.entity.Post;
import com.fb.common.Assist;
import com.fb.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class PostServiceImpl implements PostService{
    @Autowired
    private PostDao postDao;
    @Override
    public long getPostRowCount(Assist assist){
        return postDao.getPostRowCount(assist);
    }
    @Override
    public List<Post> selectPost(Assist assist){
        return postDao.selectPost(assist);
    }
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
    public int deletePost(Assist assist){
        return postDao.deletePost(assist);
    }
    @Override
    public int updatePostById(Post enti){
        return postDao.updatePostById(enti);
    }
    @Override
    public int updatePost(Post value, Assist assist){
        return postDao.updatePost(value,assist);
    }
    @Override
    public int updateNonEmptyPostById(Post enti){
        return postDao.updateNonEmptyPostById(enti);
    }
    @Override
    public int updateNonEmptyPost(Post value, Assist assist){
        return postDao.updateNonEmptyPost(value,assist);
    }

    public PostDao getPostDao() {
        return this.postDao;
    }

    public void setPostDao(PostDao postDao) {
        this.postDao = postDao;
    }

}