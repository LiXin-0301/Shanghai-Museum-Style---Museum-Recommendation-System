package com.museum.springboot.controller;


import com.museum.springboot.entity.Museum;
import com.museum.springboot.entity.Rating;
import com.museum.springboot.mapper.MuseumMapper;
import com.museum.springboot.mapper.RatingMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/rating")
public class RatingController {

    @Resource
    RatingMapper ratingMapper;
    @Autowired
    private MuseumMapper museumMapper;

    @PostMapping("/add")
    public void save(@RequestBody Rating rating) {
        rating.setRate_time(LocalDateTime.now());
        ratingMapper.insert(rating);


        BigDecimal r_exhibits = new BigDecimal(0);
        BigDecimal r_comfort = new BigDecimal(0);
        BigDecimal r_service = new BigDecimal(0);
        BigDecimal r_facility = new BigDecimal(0);
        BigDecimal r_activity = new BigDecimal(0);


        List<Rating> list = ratingMapper.getByMid(rating.getM_id());
        for (Rating r : list) {
            r_exhibits = r_exhibits.add(r.getR_exhibits());
            r_comfort = r_comfort.add(r.getR_comfort());
            r_service = r_service.add(r.getR_service());
            r_facility = r_facility.add(r.getR_facility());
            r_activity = r_activity.add(r.getR_activity());
        }


        Museum museum = new Museum();
        museum.setM_id(rating.getM_id());
        museum.setExhibits(r_exhibits.doubleValue() / list.size());
        museum.setComfort(r_comfort.doubleValue() / list.size());
        museum.setService(r_service.doubleValue() / list.size());
        museum.setFacility(r_facility.doubleValue() / list.size());
        museum.setActivity(r_activity.doubleValue() / list.size());
        museum.setM_rate((museum.getActivity() + museum.getExhibits() + museum.getComfort() + museum.getFacility() + museum.getService()) / 5);

        museumMapper.updateRating(museum);

    }


    @GetMapping("/get")
    public Map<String, Object> get(Integer user_id, Integer m_id) {
        Map<String, Object> res = new HashMap<>();
        Rating favorites = ratingMapper.get(user_id, m_id);
        if (favorites != null) {
            res.put("data", favorites);
        }
        return res;
    }

//    @GetMapping
//    public Map<String, Object> list(@RequestParam Integer m_id) {
//        Map<String, Object> map = new HashMap<>();
//        List<Rating> ratings = ratingMapper.findAllByMId(m_id);
//        map.put("exhibits", BigDecimal.ZERO);
//        List<Rating> ratingList = ratings.stream().filter(rating -> rating.getR_exhibits() != null).collect(Collectors.toList());
//        ratingList.stream().map(Rating::getR_exhibits).reduce(BigDecimal::add).ifPresent(res -> {
//            map.put("exhibits", res.divide(BigDecimal.valueOf(ratingList.size()), 1, RoundingMode.HALF_UP));
//        });
//
//
//        return map;
//    }
}