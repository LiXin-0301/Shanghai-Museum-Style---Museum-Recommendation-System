package com.example.springboot.entity;

import lombok.Data;

@Data
public class Files {

    private Integer id;
    private String name;
    private String type;
    private Long size;
    private String url;
    private Boolean isDelete;
    private Boolean enable;
    private Integer m_id;
}
