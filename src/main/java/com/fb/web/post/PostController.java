package com.fb.web.post;

import com.fb.dto.Result;
import com.fb.util.Constant;
import com.fb.util.ImgUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("post")
public class PostController {

    @RequestMapping("uploadImage")
    @ResponseBody
    public Result uploadImage(MultipartFile file, HttpServletRequest request) {
        try {
            String imgPath = ImgUtil.saveImg(file, request.getServletContext().getRealPath("/images") + Constant.USER_IMAGE_PATH);
            String imgName = imgPath.substring(imgPath.lastIndexOf("/"));
            System.out.println("图片名称"+imgName);
            System.out.println("图片地址"+imgPath);
            return Result.success(imgName, Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }
}
