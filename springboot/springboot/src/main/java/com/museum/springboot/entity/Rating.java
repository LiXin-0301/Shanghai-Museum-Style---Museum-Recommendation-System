
package com.museum.springboot.entity;


import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
public class Rating {

    private Integer m_id;
    private Integer user_id;
    private BigDecimal r_exhibits;
    private BigDecimal r_comfort;
    private BigDecimal r_service;
    private BigDecimal r_facility;
    private BigDecimal r_activity;
    private LocalDateTime rate_time;
}