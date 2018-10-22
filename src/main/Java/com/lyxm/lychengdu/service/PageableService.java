package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.model.Hot;
import com.lyxm.lychengdu.model.Pageable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
@Service
public class PageableService {
    @Resource
    private HotService hotService;

    public Pageable pageable(HttpServletRequest request,Integer index){
        Pageable pageable = new Pageable();
        List<Hot> hotList = hotService.getHots();
        List<Hot> hotList2= new ArrayList<>();
        int indexsize=3;  //当前页面最大数
        int pagecount=0;  //总页数
        int size=hotList.size();//数组最大长度
        pagecount=size/indexsize;//总页数

        if(size%indexsize!=0){
            pagecount=pagecount+1;
        }
        int start=index*indexsize-indexsize;
        int last=index*indexsize;
        if(index==pagecount){
            last=hotList.size();
        }

        for (int i=start;i<last;i++){
            Hot hot = new Hot();
            hot = hotList.get(i);
            hotList2.add(hot);
        }

        request.setAttribute("list4", hotList2);
        request.setAttribute("pagecount",pagecount);
        request.setAttribute("size",size);
        request.setAttribute("index",index);

        return pageable;



    }

}
