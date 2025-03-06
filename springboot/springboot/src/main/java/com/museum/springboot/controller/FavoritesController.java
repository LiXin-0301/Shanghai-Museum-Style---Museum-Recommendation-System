package com.museum.springboot.controller;

import com.museum.springboot.entity.BrowsingHistory;
import com.museum.springboot.entity.Favorites;
import com.museum.springboot.entity.Museum;
import com.museum.springboot.mapper.FavoritesMapper;
import com.museum.springboot.mapper.MuseumMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/favorites")
public class FavoritesController {

    @Autowired
    private FavoritesMapper favoritesmapper;


    @GetMapping("/add")
    public String add(Integer user_id,Integer m_id){
        Favorites history = new Favorites();
        history.setM_id(m_id);
        history.setUser_id(user_id);
        history.setFavorites_time(LocalDateTime.now());
        favoritesmapper.insert(history);
        return "{}";
    }

    @GetMapping("/get")
    public Map<String,Object> get(Integer user_id,Integer m_id){
        Map<String,Object> res=new HashMap<>();
        Favorites favorites = favoritesmapper.get(user_id, m_id);
        if (favorites!=null){
            res.put("data",favorites);
        }
        return res;
    }

    @GetMapping("/delete")
    public String delete(Integer user_id,Integer m_id){
        favoritesmapper.deleteById(user_id,m_id);
        return "{}";
    }


}
