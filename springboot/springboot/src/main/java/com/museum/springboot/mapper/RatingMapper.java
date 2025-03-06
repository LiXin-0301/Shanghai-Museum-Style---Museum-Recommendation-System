package com.museum.springboot.mapper;

import com.museum.springboot.entity.Rating;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RatingMapper {

    @Insert("insert into rating (user_id,m_id,r_exhibits,r_comfort,r_service,r_facility,r_activity,rate_time) " +
            "values (#{user_id}, #{m_id}, #{r_exhibits}, #{r_comfort}, #{r_service}, #{r_facility}, #{r_activity}, #{rate_time})")
    void insert(Rating rating);


    @Select("Select * from rating where user_id=#{user_id} and m_id=#{m_id} limit 1")
    Rating get(Integer user_id, Integer m_id);

    @Select("Select * from rating where m_id=#{m_id}")
    List<Rating> getByMid(Integer m_id);

//    @Delete("delete from favorites where user_id = #{user_id} and m_id=#{m_id}")
//    Integer deleteById( Integer user_id,Integer m_id);
}
