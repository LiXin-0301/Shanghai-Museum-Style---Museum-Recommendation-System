/*
package com.museum.springboot.controller;

import com.museum.springboot.config.Result;
import cn.hutool.core.util.StrUtil;
//import cn.hutool.extra.tokenizer.Result;
import com.museum.springboot.service.UserService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;
import com.museum.springboot.entity.User;
import javax.annotation.Resource;
import java.util.List;

@RestController
public class LoginController {

    @Resource
    UserService userService;

    @GetMapping("/")
    public Result hello(){return Result.success("success");}

    @PostMapping("/userlogin")
    public Result userlogin(@RequestBody User user){
        if(StrUtil.isBlank(user.getUser_nickname()) || StrUtil.isBlank(user.getUser_psw())){
            return Result.error("数据输入不合法");
        }
        user = userService.login(user);
        return Result.success(user);
    }
    @PostMapping("/managerlogin")
    public Result managerlogin(@RequestBody Manager manager){
        if(StrUtil.isBlank(manager.getUsername()) || StrUtil.isBlank(user.getPassword())){
            return Result.error("数据输入不合法");
        }
        user = userService.login(user);
        return Result.success(user);
    }
}
*/