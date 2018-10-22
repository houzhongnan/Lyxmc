package com.lyxm.lychengdu.service;


import com.lyxm.lychengdu.dao.HotelDao;
import com.lyxm.lychengdu.model.Hotel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HotelService {
    @Resource
    private HotelDao hotelDao;

    public List<Hotel> getHotels() {
        return hotelDao.getHotels();
    }
}
