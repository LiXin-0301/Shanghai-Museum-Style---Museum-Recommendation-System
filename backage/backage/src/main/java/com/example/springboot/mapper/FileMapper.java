package com.example.springboot.mapper;

import com.example.springboot.entity.Files;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FileMapper {

    @Insert("insert into file (name, type, size, url) values (#{name}, #{type}, #{size}, #{url})")
    Integer insert(Files file);

    @Insert("insert into file (name, type, size, url, m_id) values (#{name}, #{type}, #{size}, #{url},#{m_id})")
    Integer insert2(Files file);
}
