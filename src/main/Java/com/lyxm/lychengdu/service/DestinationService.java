package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.DestinationDao;
import com.lyxm.lychengdu.model.Destination;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DestinationService {
    @Resource
    private DestinationDao destinationDao;

    public List<Destination> getDestinations() {
        return destinationDao.getDestinations();
    }

    public Destination getDestination(Integer id){
        return destinationDao.getDestination(id);
    }

}
