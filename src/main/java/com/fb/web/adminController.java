package com.fb.web;

import com.fb.dto.Result;
import com.fb.service.AdminService;
import com.fb.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class adminController {

    @Autowired
    AdminService adminService;

    @RequestMapping("/login")
    @ResponseBody
    public Result login(String userName, String passWord) {
        try {
            List<Map<String, Object>> data = adminService.selectAdmin(userName, passWord);
            if (data.size() != 0) {
                return Result.success(null, Constant.SEARCH_SUCCESS);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return Result.failure(null, Constant.SEARCH_FAILURE);
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
