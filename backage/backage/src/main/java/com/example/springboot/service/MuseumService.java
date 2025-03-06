package com.example.springboot.service;

import com.example.springboot.entity.Museum;
import com.example.springboot.mapper.MuseumMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MuseumService {

    @Autowired
    private MuseumMapper museumMapper;
    public Integer save(Museum museum){     //museum无id为新增，否则为更新
        if(museum.getM_id()==null){
            return museumMapper.insertMuseum(museum);
        } else{
            return museumMapper.update(museum);
        }
    }
}
