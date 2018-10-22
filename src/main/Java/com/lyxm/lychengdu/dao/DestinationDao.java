package com.lyxm.lychengdu.dao;

import com.lyxm.lychengdu.model.Destination;

import java.util.List;

public interface DestinationDao {
    public List<Destination> getDestinations();

    Destination getDestination(Integer id);

}
