package com.fb.web.post;

import com.fb.dto.Result;
import com.fb.entity.PersonalityTraits;
import com.fb.entity.Post;
import com.fb.service.PersonalityTraitsService;
import com.fb.service.PostService;
import com.fb.util.Constant;
import com.fb.util.ImgUtil;
import org.omg.CORBA.Object;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("post")
public class PostController {

    @Autowired
    PostService postService;
    @Autowired
    PersonalityTraitsService personalityTraitsService;

    @RequestMapping("uploadImage")
    @ResponseBody
    public Result uploadImage(MultipartFile file, HttpServletRequest request) {
        try {
            String imgPath = ImgUtil.saveImg(file, request.getServletContext().getRealPath("/images") + Constant.USER_IMAGE_PATH);
            String imgName = imgPath.substring(imgPath.lastIndexOf("/"));
            return Result.success(imgName, Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }

    @RequestMapping("submitPostInfo")
    @ResponseBody
    public Result submitPostInfo(Post post, PersonalityTraits personalityTraits,HttpServletRequest request) {
        try {

            String UUIDByPost = UUID.randomUUID().toString();

            post.setPersonalitytraits(UUIDByPost);
            post.setUserName((String) request.getSession().getAttribute("userName"));

            post.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            personalityTraits.setPostId(UUIDByPost);

            int num_0 = personalityTraitsService.insertPersonalityTraits(personalityTraits);

            int num_1 = postService.insertPost(post);
            return Result.success(null, Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }


    @RequestMapping("loadPost")
    @ResponseBody
    public Result loadPost(HttpServletRequest request) {
        try {
            String userName = (String) request.getSession().getAttribute("userName");
            //通过用户名进行查询该用户发布的帖子
//            List<Map<String,Object>> postInfo = postService.selectPostByUserName(userName);
            List<Map<String,Object>> postInfo = postService.selectPostOfAll();
            //查询全部的用户所发布的帖子，在首页进行分页显示
//            List<Map<String, Object>> postInfoByPage = postService.selectPostOfAll();
            return Result.success(postInfo,userName,Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }
}
