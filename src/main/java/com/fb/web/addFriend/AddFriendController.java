package com.fb.web.addFriend;

import com.fb.dto.Result;
import com.fb.entity.Friend;
import com.fb.service.FriendService;
import com.fb.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("addFriend")
public class AddFriendController {

    @Autowired
    FriendService friendService;

    @RequestMapping("confirmAddFriend")
    @ResponseBody
    public Result confirmAddFriend(Friend friend) {
        try {
            friendService.insertFriend(friend);
            return Result.success(null, Constant.ADD_SUCCESS);
        } catch (Exception e) {
            System.out.println(e);
        }
        return Result.failure(null, Constant.ADD_FAILURE);
    }

    @RequestMapping("isFriend")
    @ResponseBody
    public Result isFriend(Friend friend) {
        try {
            List<Map<String,Objects>> friendInfo = friendService.selectFriendOfIsFriend(friend);

            return Result.success(friendInfo, Constant.ADD_SUCCESS);
        } catch (Exception e) {
            System.out.println(e);
        }
        return Result.failure(null, Constant.ADD_FAILURE);
    }
}
