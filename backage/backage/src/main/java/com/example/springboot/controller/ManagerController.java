package com.example.springboot.controller;

import com.example.springboot.entity.Manager;
import com.example.springboot.mapper.ManagerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/manager")
public class ManagerController {
    @Autowired
    private ManagerMapper managerMapper;

    @GetMapping("/select/{id}")
    public Manager selectOne(@PathVariable Integer id)
    {
        return managerMapper.getById(id);
    }

    //删除数据
    @DeleteMapping("/{id}")
    public Integer delete(@PathVariable Integer id){
        return managerMapper.deleteById(id);
    }

    // 后端接口，处理密码修改请求
    @PostMapping("/psw/{id}")
    public Integer savePsw(@PathVariable Integer id, @RequestBody Map<String, String> passwordData) {
        String oldPassword = passwordData.get("psw");
        String newPassword = passwordData.get("newPsw");

        return managerMapper.updatePSW(id, newPassword,oldPassword);
    }

    @PostMapping
    public Integer save(@RequestBody Manager manager){

            return managerMapper.update(manager);
    }
}
