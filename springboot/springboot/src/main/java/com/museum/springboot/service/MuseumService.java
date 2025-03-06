package com.museum.springboot.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.museum.springboot.entity.Museum;
import com.museum.springboot.mapper.MuseumMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MuseumService extends ServiceImpl<MuseumMapper, Museum> {
    @Autowired
    private MuseumMapper museumMapper;
}
