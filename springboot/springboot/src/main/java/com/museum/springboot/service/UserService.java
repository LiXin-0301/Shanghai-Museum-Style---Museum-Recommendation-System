package com.museum.springboot.service;

import com.museum.springboot.entity.User;
import com.museum.springboot.exception.ServiceException;
import com.museum.springboot.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;


    //验证用户账户是否合法
    public User userlogin(User user) {
        User dbUser = null;
        if (user.getRole().equals("user")) {
            //根据用户昵称查询数据库的用户信息
            dbUser = userMapper.selectByUserNickname(user.getUser_nickname());
        } else {
            dbUser = userMapper.selectManagerByUserNickname(user.getUser_nickname());
        }
        if (dbUser == null) {
            //抛出一个自定义的异常
            throw new ServiceException("账户或密码错误");
        }
        if (!user.getUser_psw().equals(dbUser.getUser_psw())) {
            throw new ServiceException("账户或密码错误");
        }
        return dbUser;
    }

    public User register(User user) {
        User dbUser = userMapper.selectByUserNickname(user.getUser_nickname());
        if (dbUser != null) {
            //抛出一个自定义的异常
            throw new ServiceException("用户名已存在");
        }
        user.setUser_nickname(user.getUser_nickname());//user.setUser_nickname("honey-"+ RandomUtil.randomNumbers(4));
        userMapper.insert(user);
        return user;
    }
}


