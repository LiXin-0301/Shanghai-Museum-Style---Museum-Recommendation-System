package com.example.springboot.controller;

import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.example.springboot.entity.User;
import com.example.springboot.mapper.UserMapper;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.net.URLEncoder;
import java.util.*;

@RestController
@RequestMapping("/user")
public class
UserController {

    @Autowired
    private UserMapper userMapper;

    //查询所有数据
    @GetMapping
    public List<User> findAll(){
        return userMapper.findAll();
    }

    //删除数据
    @DeleteMapping("/{user_id}")
    public Integer delete(@PathVariable Integer user_id){
        return userMapper.deleteById(user_id);
    }

    //批量删除
    @PostMapping("/del/batch")
    public void deleteBatch(@RequestBody List<Integer> ids){
        for(int i=0;i<ids.size();++i){
            System.out.println(ids.get(i));
            userMapper.deleteById(ids.get(i));
        }
        return;
    }

    //分页查询
    @GetMapping("/page")
    public Map<String, Object> findPage(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam String query) {

        pageNum = (pageNum - 1) * pageSize;
        Map<String, Object> res = new HashMap<>();
        if(convert(query)!=-1){
            int user_id = convert(query);
            List<User> data = userMapper.selectPage2(pageNum, pageSize,user_id);
            Integer total = userMapper.selectTotal2(user_id);
            res.put("data", data);
            res.put("total", total);
        }
        else{
            String user_nickname = "%" + query + "%";
            List<User> data = userMapper.selectPage(pageNum, pageSize, user_nickname);
            Integer total = userMapper.selectTotal(user_nickname);
            res.put("data", data);
            res.put("total", total);
        }
        return res;
    }
    public Integer convert(String s) {
        try {
            Integer num1 = Integer.parseInt(s);
            return num1;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    //导出
    @GetMapping("/export")
    public void export(HttpServletResponse response) throws Exception{
        //从数据库查询出所有的数据
        List<User> List = userMapper.findAll();
        //在内存操作，写出到浏览器
        ExcelWriter writer = ExcelUtil.getWriter(true);
        writer.setOnlyAlias(true);
        // 将数据写入到 ExcelWriter
        List<Map<String, Object>> dataList = new ArrayList<>();
        for(User user : List) {
            Map<String, Object> data = new LinkedHashMap<>();
            data.put("用户ID", user.getUser_id());
            data.put("用户昵称", user.getUser_nickname());
            data.put("用户性别", user.getUser_sex());
            data.put("用户邮箱", user.getUser_email());
            data.put("用户创建时间", user.getUser_ctime());
            // 不添加 user_psw 字段
            dataList.add(data);
        }

        writer.write(dataList,true);
        //设置浏览器响应的格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("用户信息","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename=" + fileName + ".xlsx");

        ServletOutputStream out = response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }

    //导入
    @PostMapping("/import")
    public void imp(MultipartFile file)throws Exception{
        InputStream inputStream = file.getInputStream();
        ExcelReader reader = ExcelUtil.getReader(inputStream);
        //List<User> list = reader.readAll(User.class);
        List<User> list = reader.read(0,1, User.class);
        System.out.println(list);
        for (User user : list) {
            userMapper.insertUser(user);
        }

    }
}
