package com.museum.springboot.mapper;

import com.museum.springboot.entity.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserMapper {
    //根据id获取这个用户所有属性
    @Select("select * from user where user_id = #{user_id}")
    User getById(@Param("user_id") Integer user_id);

    @Update("update user set user_psw = #{user_newPsw} where user_id = #{user_id} and user_psw = #{user_psw}")
    Integer updatePSW(@Param("user_id") Integer user_id, @Param("user_newPsw") String user_newPsw, @Param("user_psw") String user_psw);


    @Update("update user set user_email = #{user_email},user_intro=#{user_intro},user_nickname=#{user_nickname},user_phone=#{user_phone},user_sex=#{user_sex},user_age=#{user_age},imageUrl=#{imageUrl} where user_id = #{user_id}")
    Integer updateByUserId(User user);

    @Select("select * from user")
    List<User> findAll();

    @Delete("delete from user where user_id = #{user_id}")
    Integer deleteById(@Param("user_id") Integer id);

    @Select("select * from user where user_nickname like #{user_nickname} limit #{pageNum}, #{pageSize}")
    List<User> selectPage(Integer pageNum, Integer pageSize, String user_nickname);

    @Select("select * from user where user_id = #{user_id}  limit #{pageNum}, #{pageSize}")
    List<User> selectPage2(Integer pageNum, Integer pageSize, Integer user_id);

    @Select("select count(*) from user where user_nickname like #{user_nickname}")
    Integer selectTotal(String user_nickname);

    @Select("select count(*) from user where user_id = #{user_id}")
    Integer selectTotal2(Integer user_id);

    @Insert("insert into user (user_nickname, user_sex, user_email) " +
            "values (#{user_nickname}, #{user_sex}, #{user_email})")
    void insertUser(User user);

    @Select("select * from user where user_id = #{user_id}")
    User selectByUserId(Integer user_id);

    @Select("select * from user where user_nickname = #{user_nickname}")
    User selectByUserNickname(String user_nickname);

    @Select("select * from manager where user_nickname = #{user_nickname}")
    User selectManagerByUserNickname(String user_nickname);

    @Insert("insert into user (user_nickname, user_psw) " +
            "values (#{user_nickname}, #{user_psw})")
    void insert(User user);

}
