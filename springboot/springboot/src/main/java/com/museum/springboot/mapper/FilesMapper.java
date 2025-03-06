package com.museum.springboot.mapper;

import com.museum.springboot.entity.Files;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface FilesMapper {

    @Select("SELECT url, m_id FROM file WHERE m_id IS NOT NULL AND name LIKE '%主图%';")
    List<Files> selectImage();
    @Select("SELECT url, m_id FROM file WHERE m_id IS NOT NULL;")
    List<Files> AllImage();

    @Insert("insert into file (name, type, size, url) values (#{name}, #{type}, #{size}, #{url})")
    Integer insert(Files file);

    @Insert("insert into file (name, type, size, url, m_id) values (#{name}, #{type}, #{size}, #{url},#{m_id})")
    Integer insert2(Files file);
}
