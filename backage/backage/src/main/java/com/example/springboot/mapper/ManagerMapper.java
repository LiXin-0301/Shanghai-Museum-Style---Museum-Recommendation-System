package com.example.springboot.mapper;

import com.example.springboot.entity.Manager;
import org.apache.ibatis.annotations.*;


@Mapper
public interface ManagerMapper {
    //根据id获取这个管理员所有属性
    @Select("select * from manager where user_id = #{id}")
    Manager getById(@Param("id") Integer id);

    @Delete("delete from manager where user_id = #{id}")
    Integer deleteById(@Param("id") Integer id);

    @Update("update manager set user_psw = #{newPsw} where user_id = #{id} and user_psw = #{psw}")
    Integer updatePSW(@Param("id") Integer id,@Param("newPsw") String newPsw,@Param("psw") String psw);

    Integer update(Manager manager);
}
