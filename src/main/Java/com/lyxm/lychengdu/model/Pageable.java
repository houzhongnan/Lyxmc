package com.lyxm.lychengdu.model;

public class Pageable {
    private Integer index;//页数
    private Integer pagecount;//总页数
    private Integer size;//数组最大长度
    private Integer indexsize;//当前页面最大数
    private Integer start;
    private Integer last;

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    public Integer getPagecount() {
        return pagecount;
    }

    public void setPagecount(Integer pagecount) {
        this.pagecount = pagecount;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getIndexsize() {
        return indexsize;
    }

    public void setIndexsize(Integer indexsize) {
        this.indexsize = indexsize;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getLast() {
        return last;
    }

    public void setLast(Integer last) {
        this.last = last;
    }
}
