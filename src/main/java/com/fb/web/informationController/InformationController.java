package com.fb.web.informationController;

import com.fb.dto.Result;
import com.fb.entity.Message;
import com.fb.entity.User;
import com.fb.service.UserService;
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

@Controller
@RequestMapping("information")
public class InformationController {

    @Autowired
    UserService userService;

    @RequestMapping("loadInformation")
    @ResponseBody
    public Result loadInformation(HttpServletRequest request) {
        try {
            String userName = (String) request.getSession().getAttribute("userName");
            List<Map<String, Object>> userInfo = userService.selectUserByUserName(userName);

            return Result.success(userInfo, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {

        }

        return Result.failure(null, Constant.SEARCH_FAILURE);
    }

    @RequestMapping("informationByImg")
    @ResponseBody
    public Result informationByImg(MultipartFile file, HttpServletRequest request) {
        try {
            String imgPath = ImgUtil.saveImg(file, request.getServletContext().getRealPath("/images") + Constant.USER_IMAGE_PATH);
            String imgName = imgPath.substring(imgPath.lastIndexOf("/"));

            return Result.success(imgName, Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }

    @RequestMapping("submitInfoByUpdate")
    @ResponseBody
    public Result submitInfoByUpdate(User user) {
        try {
            userService.updateUserInfo(user);
            return Result.success(null, Constant.UPLOAD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.UPLOAD_FAILURE);
    }

    @RequestMapping("leaveMessage")
    @ResponseBody
    public Result leaveMessage(Message message,HttpServletRequest request) {
        try{
            message.setUserId((String) request.getSession().getAttribute("userName"));
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
            message.setDate(df.format(new Date()));
            userService.leaveMessage(message);
            return Result.success(null, Constant.ADD_SUCCESS);
        }catch (Exception e){
            e.printStackTrace();
        }
        return Result.failure(null,Constant.ADD_FAILURE);
    }

    @RequestMapping("getLeaveMessage")
    @ResponseBody
    public Result getLeaveMessage() {
        try {
            List<Map<String, java.lang.Object>> leaveMessageInfo = userService.getLeaveMessage();
            return Result.success(leaveMessageInfo, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.SEARCH_FAILURE);
    }
}
