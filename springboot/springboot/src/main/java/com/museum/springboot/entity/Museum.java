package com.museum.springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.File;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Museum {
    private Integer m_id;
    private String m_name;
    private String address;
    private String type;
    private Double fare;
    private String openingDay;
    private String open_time;
    private String fare_rule;
    private String m_intro;
    private String official;
    private Double m_rate;
    private Integer m_view;
    private Integer m_favorites;

    private double number_rating;
    private double exhibits;
    private double comfort;
    private double service;
    private double facility;
    private double activity;

    private File main_img;
    private File m_img1;
    private File m_img2;
    private File m_img3;
    private File m_img4;

}
