package com.museum.springboot.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class BrowsingHistory {
    private Integer id;
    private Integer m_id;
    private Integer user_id;
    private Long browsinghistory_time;
}
