package com.fb.web;

import com.fb.dto.Result;
import com.fb.entity.User;
import com.fb.service.AdminService;
import com.fb.util.Constant;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class adminController {

    @Autowired
    AdminService adminService;

    @RequestMapping("/login")
    @ResponseBody
    public Result login(String userName, String passWord, HttpServletRequest request) {
        try {
            List<Map<String, Object>> data = adminService.selectAdmin(userName, passWord);
            if (data.size() != 0) {
                return Result.success();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @RequestMapping("/index")
    public String index() {
        return "systemBackground/admin/index";
    }

    @RequestMapping("/newMassage")
    public String newMassage() {
        System.out.println("123456");
        return "systemBackground/admin/page/message/message";
    }

    @RequestMapping("addUser")
    @ResponseBody
    public Result addUser(User user) {
        try {
            adminService.addUser(user);
            return Result.success(null, Constant.ADD_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.ADD_FAILURE);
    }

    @RequestMapping("showUserInfo")
    @ResponseBody
    public Result showUserInfo() {
        try {
            List<Map<String, Object>> userInfo = adminService.showUserInfo();
            return Result.success(userInfo, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.SEARCH_FAILURE);
    }

    @RequestMapping("delUser")
    @ResponseBody
    public Result delUser(String id) {
        try {
            adminService.delUser(id);
            return Result.success(null, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.SEARCH_FAILURE);
    }

    @RequestMapping("updateUser")
    @ResponseBody
    public Result updateUser(User user) {
        try {
            adminService.updateUser(user);
            return Result.success(null, Constant.OPERATION_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.OPERATION_FAILURE);
    }

    //文章操作
    @RequestMapping("/showNewsList")
    @ResponseBody
    public Result showNewsList() {
        try {
            List<Map<String, Object>> newsInfo = adminService.showNewsList();
            return Result.success(newsInfo, Constant.OPERATION_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.OPERATION_FAILURE);
    }

    @RequestMapping("/updateNewsStatus")
    @ResponseBody
    public Result updateNewsStatus(@RequestParam(value = "idList[]") String[] idList) {
        try {
            adminService.updateNewsStatus(idList);
            return Result.success(null, Constant.OPERATION_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.OPERATION_FAILURE);
    }

    @RequestMapping("/searchNewsOnUpdate")
    @ResponseBody
    public Result searchNewsOnUpdate(String id) {
        try {
            List<Map<String,Object>> newsInfo = adminService.searchNewsOnUpdate(id);
            return Result.success(newsInfo, Constant.OPERATION_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Result.failure(null, Constant.OPERATION_FAILURE);
    }
}
