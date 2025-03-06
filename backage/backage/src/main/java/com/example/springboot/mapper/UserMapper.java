package com.example.springboot.mapper;

import com.example.springboot.entity.User;
import org.apache.ibatis.annotations.*;


import java.util.List;
import java.util.Vector;

@Mapper
public interface UserMapper {
    @Select("select * from user")
    List<User> findAll();

    @Delete("delete from user where user_id = #{user_id}")
    Integer deleteById(@Param("user_id") Integer id);

    @Select("select * from user where user_nickname like #{user_nickname} limit #{pageNum}, #{pageSize}")
    List<User> selectPage(Integer pageNum, Integer pageSize,String user_nickname);

    @Select("select * from user where user_id = #{user_id}  limit #{pageNum}, #{pageSize}")
    List<User> selectPage2(Integer pageNum, Integer pageSize,Integer user_id);
    @Select("select count(*) from user where user_nickname like #{user_nickname}")
    Integer selectTotal(String user_nickname);

    @Select("select count(*) from user where user_id = #{user_id}")
    Integer selectTotal2(Integer user_id);

    @Insert("insert into user (user_nickname, user_sex, user_email) " +
            "values (#{user_nickname}, #{user_sex}, #{user_email})")
    void insertUser(User user);
}
