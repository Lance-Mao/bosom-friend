package com.fb.web;

import com.fb.dto.Result;
import com.fb.entity.User;
import com.fb.service.UserService;
import com.fb.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public Result login(User user) {
        List<User> data = null;
        try {
            data = userService.selectUser(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (data.size() != 0) {
            return Result.success();
        }
        return Result.failure(null, Constant.ACCOUNT_OR_PWD_ERROR);
    }

    @RequestMapping("/signup")
    @ResponseBody
    public Result signup(User user) {
        try {
            userService.insertUser(user);
            return Result.success();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Result.failure("null",Constant.ACCOUNT_IS_EXIST);
    }

    @RequestMapping("/toIndex")
    public String toIndex() {
        return "index";
    }
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "login/index";
    }
}
