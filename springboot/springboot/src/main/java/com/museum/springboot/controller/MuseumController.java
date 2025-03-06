package com.museum.springboot.controller;

import com.museum.springboot.entity.BrowsingHistory;
import com.museum.springboot.entity.Museum;
import com.museum.springboot.mapper.BrowsingHistoryMapper;
import com.museum.springboot.mapper.MuseumMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/museum")
public class MuseumController {
    @Autowired
    private MuseumMapper museumMapper;

    @Autowired
    private MuseumMapper museumService;
    @Autowired
    private BrowsingHistoryMapper browsingHistoryMapper;


    /*博物馆全部显示配套java函数*/
    @GetMapping
    public List<Museum> index() {
        List<Museum> all = museumMapper.findAll();
        return all;
    }

    @GetMapping("/find")
    /* 博物馆单条件搜索配套java函数*/
    public List<Museum> findMuseum(Integer m_id, Integer user_id) {
        List<Museum> all1 = museumMapper.museumBym_id(m_id);
        BrowsingHistory history = new BrowsingHistory();
        history.setM_id(m_id);
        history.setUser_id(user_id);
        history.setBrowsinghistory_time(System.currentTimeMillis());
        browsingHistoryMapper.insertHistory(history);
        return all1;
    }

    @GetMapping("/search")
    /*博物馆多条件灵活筛选java函数*/
    public List<Museum> searchMuseums(String address, String type, Double fare, String fare_rule) {
        return museumMapper.searchMuseums(address, type, fare, fare_rule);
    }


    @GetMapping("/findbrowsinghistory")
    /*查找历史记录java函数*/
    public List<Museum> findMuseumsByBrowsingHistory(@Param("user_id") Integer user_id) {
        return museumMapper.findMuseumsByBrowsingHistory(user_id);
    }

    @GetMapping("/findfavorites")
    /*查找收藏java函数*/
    public List<Museum> findMuseumsByFavorites(@Param("user_id") Integer user_id) {
        return museumMapper.findMuseumsByFavorites(user_id);
    }


    @GetMapping("/recommendbyview")
    /* 按热度推荐博物馆java函数 */
    public List<Museum> recommendMuseumsByView() {
        return museumMapper.recommendMuseumsByView();
    }

    @GetMapping("/recommendbyfavorites")
    /* 按收藏推荐博物馆java函数 */
    public List<Museum> recommendMuseumsByFavorites() {
        return museumMapper.recommendMuseumsByFavorites();
    }

    @GetMapping("/recommendbyrate")
    /* 按评分推荐博物馆java函数 */
    public List<Museum> recommendMuseumsByRate() {
        return museumMapper.recommendMuseumsByRate();
    }


    /*分页查询
    接口路径（“/museum/page”）?pageNum=1&pageSize=10
    @RequestMapping接收 */
    @GetMapping("/page")
    public Map<String, Object> findPage(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam String m_name,
                                        @RequestParam String address,
                                        @RequestParam String type,
                                        @RequestParam String openingDay,
                                        @RequestParam String fare_rule,
                                        @RequestParam String isReservedTag,
                                        @RequestParam String sortBy
    ) {
        pageNum = (pageNum - 1) * pageSize;
        m_name = "%" + m_name + "%";
        address = "%" + address + "%";
        type = "%" + type + "%";
        openingDay = "%" + openingDay + "%";
        fare_rule = "%" + fare_rule + "%";
        isReservedTag = "%" + isReservedTag + "%";
        List<Museum> data = museumMapper.selectPage(pageNum, pageSize, m_name, address, type, openingDay, fare_rule, isReservedTag);
        Integer total = museumMapper.selectTotal(m_name, address, type, openingDay, fare_rule, isReservedTag);
        Map<String, Object> res = new HashMap<>();
        res.put("formData", data);
        res.put("total", total);
        return res;
    }


}






