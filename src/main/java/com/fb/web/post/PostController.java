package com.fb.web.post;

import com.fb.dto.Result;
import com.fb.entity.PersonalityTraits;
import com.fb.entity.Post;
import com.fb.service.PersonalityTraitsService;
import com.fb.service.PostService;
import com.fb.util.Constant;
import com.fb.util.ImgUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

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
    public Result submitPostInfo(Post post, PersonalityTraits personalityTraits) {
        try {

            int num_0 = personalityTraitsService.insertPersonalityTraits(personalityTraits);

            int num_1 = postService.insertPost(post);
            System.out.println(post);
            System.out.println(personalityTraits);
            return Result.success(null, Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }
}
