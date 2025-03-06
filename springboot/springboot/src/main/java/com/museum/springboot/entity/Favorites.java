package com.museum.springboot.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
public class Favorites {
    private Integer m_id;
    private Integer user_id;
    private LocalDateTime favorites_time;
}
