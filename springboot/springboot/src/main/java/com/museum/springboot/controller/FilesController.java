package com.museum.springboot.controller;


import com.museum.springboot.entity.Files;
import com.museum.springboot.mapper.FilesMapper;
import com.museum.springboot.mapper.MuseumMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/files")
public class FilesController {

    @Autowired
    private FilesMapper filesMapper;


    @GetMapping("/images")
    public List<Files> selectImages(){
        return filesMapper.selectImage();
    }
    @GetMapping("/images1")
    public List<Files> allImages(){
        return filesMapper.AllImage();
    }

}
