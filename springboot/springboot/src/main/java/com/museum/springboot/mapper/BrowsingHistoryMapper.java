package com.museum.springboot.mapper;

import com.museum.springboot.entity.BrowsingHistory;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface BrowsingHistoryMapper {
    @Insert("insert into browsinghistory (user_id, m_id, browsinghistory_time) " +
            "values (#{user_id}, #{m_id}, #{browsinghistory_time})")
    void insertHistory(BrowsingHistory history);


    @Delete("delete from browsinghistory where id = #{id}")
    Integer deleteById(Integer id);


    @Select("select * from history where user_id = #{userId} order by crease_time desc")
    List<BrowsingHistory> selectByUserNickname(Integer userId);

}
