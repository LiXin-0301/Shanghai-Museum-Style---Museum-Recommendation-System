package com.example.springboot.controller;

import cn.hutool.poi.excel.ExcelReader;
import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.example.springboot.entity.Museum;
import com.example.springboot.mapper.MuseumMapper;
import com.example.springboot.service.MuseumService;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.net.URLEncoder;
import java.util.*;

@RestController
@RequestMapping("/museum")
public class MuseumController {
    @Autowired
    private MuseumMapper museumMapper;

    //查询所有数据
    @GetMapping
    public List<Museum> findAll(){
        return museumMapper.findAll();
    }

    //查询博物馆五项综合评分
    @GetMapping("/score/{m_id}")
    public List<Museum> findScore(@PathVariable Integer m_id){return museumMapper.findScore(m_id);}

    //新增、更新数据
    @Autowired
    private MuseumService museumService;
    @PostMapping
    public Integer save(@RequestBody Museum museum){
           return museumService.save(museum);
    }

    //删除数据
    @DeleteMapping("/{m_id}")
    public Integer delete(@PathVariable Integer m_id){
        return museumMapper.deleteById(m_id);
    }

    //批量删除
    @PostMapping("/del/batch")
    public void deleteBatch(@RequestBody List<Integer> ids){
        for(int i=0;i<ids.size();++i){
            System.out.println(ids.get(i));
            museumMapper.deleteById(ids.get(i));
        }
        return;
    }

    //分页查询
    @GetMapping("/page")
    public Map<String, Object> findPage(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam String query) {

        pageNum = (pageNum - 1) * pageSize;
        Map<String, Object> res = new HashMap<>();
        if(convert(query)!=-1){
            int m_id = convert(query);
            List<Museum> data = museumMapper.selectPage2(pageNum, pageSize,m_id);
            Integer total = museumMapper.selectTotal2(m_id);
            res.put("data", data);
            res.put("total", total);
        }
        else{
            String m_name = "%" + query + "%";
            List<Museum> data = museumMapper.selectPage(pageNum, pageSize, m_name);
            Integer total = museumMapper.selectTotal(m_name);
            res.put("data", data);
            res.put("total", total);
        }
        return res;
    }
    public Integer convert(String s) {
        try {
            Integer num1 = Integer.parseInt(s);
            return num1;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    //导出
    @GetMapping("/export")
    public void export(HttpServletResponse response) throws Exception{
        //从数据库查询出所有的数据
        List<Museum> List = museumMapper.findAll();
        //在内存操作，写出到浏览器
        ExcelWriter writer = ExcelUtil.getWriter(true);
        writer.setOnlyAlias(true);

        writer.write(List,true);
        //设置浏览器响应的格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("博物馆信息","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename=" + fileName + ".xlsx");

        ServletOutputStream out = response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }

    //导入
    @PostMapping("/import")
    public void imp(MultipartFile file)throws Exception{
        InputStream inputStream = file.getInputStream();
        ExcelReader reader = ExcelUtil.getReader(inputStream);
        List<Museum> list = reader.readAll(Museum.class);
        System.out.println(list);
        for (Museum museum : list) {
            museumMapper.insertMuseum(museum);
        }

    }
}
