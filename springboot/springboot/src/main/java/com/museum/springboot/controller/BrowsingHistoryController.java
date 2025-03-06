package com.museum.springboot.controller;

import com.museum.springboot.entity.BrowsingHistory;
import com.museum.springboot.mapper.BrowsingHistoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping
@RestController
public class BrowsingHistoryController {

    @Autowired
    private BrowsingHistoryMapper browsingHistoryMapper;

    @GetMapping("/history/add")
    public String add(Integer user_id,Integer m_id){
        BrowsingHistory history = new BrowsingHistory();
        history.setM_id(m_id);
        history.setUser_id(user_id);
        history.setBrowsinghistory_time(System.currentTimeMillis());
        browsingHistoryMapper.insertHistory(history);
        return "ok";
    }

    @GetMapping("/history/delete")
    public String delete(Integer id){
        browsingHistoryMapper.deleteById(id);
        return "ok";
    }

}
