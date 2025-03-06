package com.museum.springboot.mapper;

import com.museum.springboot.entity.BrowsingHistory;
import com.museum.springboot.entity.Favorites;
import com.museum.springboot.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

public interface FavoritesMapper {

    @Insert("insert into favorites (user_id,m_id,  favorites_time) " +
            "values (#{user_id}, #{m_id}, #{favorites_time})")
    void insert(Favorites favorites);


    @Select("Select * from favorites where user_id=#{user_id} and m_id=#{m_id} limit 1")
    Favorites get(Integer user_id,Integer m_id);

    @Delete("delete from favorites where user_id = #{user_id} and m_id=#{m_id}")
    Integer deleteById( Integer user_id,Integer m_id);

}
