package com.fb.web;

import com.fb.dto.Result;
import com.fb.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
            System.out.println(123456);
            if (data.size() != 0) {
                return Result.success();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @RequestMapping("/index")
    public String index(){
        return "systemBackground/admin/index";
    }

    @RequestMapping("/newMassage")
    public String newMassage() {
        System.out.println("123456");
        return "systemBackground/admin/page/message/message";
    }
}
