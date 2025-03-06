package com.example.springboot.entity;

import cn.hutool.core.annotation.Alias;
import lombok.Data;

@Data
public class Museum {
    @Alias("博物馆ID")
    private Integer m_id;
    @Alias("博物馆名称")
    private String m_name;
    @Alias("地址")
    private String address;
    @Alias("类型")
    private String type;
    @Alias("开放时间")
    private String open_time;
    @Alias("收费标准")
    private String fare_rule;
    @Alias("简介")
    private String m_intro;
    private String exhibits;
    private String comfort;
    private String service;
    private String facility;
    private String activity;

}
