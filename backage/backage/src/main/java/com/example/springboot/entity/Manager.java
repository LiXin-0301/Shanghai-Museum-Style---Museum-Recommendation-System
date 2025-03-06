package com.example.springboot.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@Data
public class Manager {
    private Integer user_id;
    @JsonIgnore//前端不展示密码
    private String psw;
    private String phone;
    private String email;
    private String address;
    private String imageUrl;
    private String newPsw;
    private String confirmPsw;
}
