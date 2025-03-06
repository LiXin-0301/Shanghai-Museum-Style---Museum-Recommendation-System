package com.example.springboot.entity;

import cn.hutool.core.annotation.Alias;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//int和get方法
@Data
public class User {
    @Alias("用户ID")
    private Integer user_id;
    @JsonIgnore//前端不展示密码
    @Alias("用户密码")
    private String user_psw;
    @Alias("用户昵称")
    private String user_nickname;
    @Alias("用户性别")
    private String user_sex;
    private Integer user_age;
    private String user_intro;
    @Alias("用户邮箱")
    private String user_email;
    private String user_phone;
    @Alias("用户创建时间")
    private String user_ctime;
    private String user_ltime;

}
