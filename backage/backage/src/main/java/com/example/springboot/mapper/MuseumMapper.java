package com.example.springboot.mapper;

import com.example.springboot.entity.Museum;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface MuseumMapper {
    @Select("select * from museum")
    List<Museum> findAll();

    @Select("select exhibits,comfort,service,facility,activity from museum where m_id = #{m_id}")
    List<Museum> findScore(Integer m_id);

    @Insert("insert into museum (m_name, address, type, open_time, fare_rule, m_intro) " +
            "values (#{m_name}, #{address}, #{type}, #{open_time}, #{fare_rule}, #{m_intro})")
    Integer insertMuseum(Museum museum);

    @Delete("delete from museum where m_id = #{m_id}")
    Integer deleteById(@Param("m_id") Integer m_id);

    @Select("select * from museum where m_name like #{m_name} or address like #{m_name} limit #{pageNum}, #{pageSize}")
    List<Museum> selectPage(Integer pageNum, Integer pageSize,String m_name);

    @Select("select * from museum where m_id = #{m_id}  limit #{pageNum}, #{pageSize}")
    List<Museum> selectPage2(Integer pageNum, Integer pageSize,Integer m_id);
    @Select("select count(*) from museum where m_name like #{m_name} or address like #{m_name}")
    Integer selectTotal(String m_name);

    @Select("select count(*) from museum where m_id = #{m_id}")
    Integer selectTotal2(Integer m_id);

    Integer update(Museum museum);
}
