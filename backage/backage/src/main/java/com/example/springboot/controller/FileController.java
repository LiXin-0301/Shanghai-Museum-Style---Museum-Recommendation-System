package com.example.springboot.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.example.springboot.entity.Files;
import com.example.springboot.mapper.FileMapper;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

//文件上传相关接口
@RestController
@RequestMapping("/file")
public class FileController {

    //引入application.yml配置文件中的配置并赋予uploadPath
    @Value("${files.upload.path}")
    private String uploadPath;

    @Resource
    private FileMapper fileMapper;


    // ignore_security_alert
    @PostMapping("upload")
    public String upload(@RequestParam MultipartFile file) throws IOException {
        //System.out.println("Received m_id: " + m_id);

        String originalFilename = file.getOriginalFilename();
        String type = FileUtil.extName(originalFilename);
        Long size = file.getSize();

        //先存储到磁盘
        File uploadFile = new File(uploadPath);
        //判断配置的文件目录是否存在，若不存在则创建一个新的文件目录
        if(!uploadFile.exists()){
            uploadFile.mkdir();
        }
        //定义一个文件唯一的标识码
        String uuid = IdUtil.fastUUID();
        String fileUuid = uuid + StrUtil.DOT + type;
        File uploadFilePath = new File(uploadPath + fileUuid);
        //把获取到的文件存储到磁盘目录
        file.transferTo(uploadFilePath);
        String url = "http://localhost:9090/file/" + fileUuid;
        //存入数据库
        Files saveFile = new Files();
        saveFile.setName(originalFilename);
        saveFile.setType(type);
        saveFile.setSize(size/1024);
        saveFile.setUrl(url);
        //saveFile.setM_id(m_id);
        System.out.println(url);
        fileMapper.insert(saveFile);
        return url;
    }
    // ignore_security_alert
    @PostMapping("upload2")
    public String upload2(@RequestParam MultipartFile file, @RequestParam Integer m_id) throws IOException {
        System.out.println("Received m_id: " + m_id);

        String originalFilename = file.getOriginalFilename();
        String type = FileUtil.extName(originalFilename);
        Long size = file.getSize();

        //先存储到磁盘
        File uploadFile = new File(uploadPath);
        //判断配置的文件目录是否存在，若不存在则创建一个新的文件目录
        if(!uploadFile.exists()){
            uploadFile.mkdir();
        }
        //定义一个文件唯一的标识码
        String uuid = IdUtil.fastUUID();
        String fileUuid = uuid + StrUtil.DOT + type;
        File uploadFilePath = new File(uploadPath + fileUuid);
        //把获取到的文件存储到磁盘目录
        file.transferTo(uploadFilePath);
        String url = "http://localhost:9090/file/" + fileUuid;
        //存入数据库
        Files saveFile = new Files();
        saveFile.setName(originalFilename);
        saveFile.setType(type);
        saveFile.setSize(size/1024);
        saveFile.setUrl(url);
        saveFile.setM_id(m_id);
        System.out.println(url);
        fileMapper.insert2(saveFile);
        return url;
    }

    @GetMapping("/{fileUuid}")
    public void download(@PathVariable String fileUuid, HttpServletResponse response)throws Exception{
        //根据文件的唯一标识码获取文件
        File uploadFilePath = new File(uploadPath + fileUuid);// ignore_security_alert
        //设置输出流的格式
        ServletOutputStream os = response.getOutputStream();
        response.addHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileUuid,"UTF-8"));
        response.setContentType("application/octet-stream");

        //读取文件的字节流
        os.write(FileUtil.readBytes(uploadFilePath));
        os.flush();
        os.close();
    }
}
