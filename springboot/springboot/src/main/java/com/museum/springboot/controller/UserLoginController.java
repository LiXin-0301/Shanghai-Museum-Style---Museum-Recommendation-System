package com.museum.springboot.controller;

import cn.hutool.core.util.StrUtil;
import com.museum.springboot.config.Result;
import com.museum.springboot.entity.User;
import com.museum.springboot.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class UserLoginController {

    @Resource
    UserService userService;

    /*表示后台是通的*/
    @GetMapping("/success")
    public Result hello() {
        return Result.success("success");
    }

    @PostMapping("/userlogin")
    public Result userlogin(@RequestBody User user) {
        if (StrUtil.isBlank(user.getUser_nickname()) || StrUtil.isBlank(user.getUser_psw()) || StrUtil.isBlank(user.getRole())) {
            return Result.error("数据输入不合法");
        }
        return Result.success(userService.userlogin(user));
    }

    @PostMapping("/register")
    public Result register(@RequestBody User user) {
        if (StrUtil.isBlank(user.getUser_nickname()) || StrUtil.isBlank(user.getUser_psw())) {
            return Result.error("数据输入不合法");
        }
        if (user.getUser_nickname().length() > 50 || user.getUser_psw().length() > 50) {
            return Result.error("数据输入不合法");
        }
        user = userService.register(user);
        return Result.success(user);
    }

}
