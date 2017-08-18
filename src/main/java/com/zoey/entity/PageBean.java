package com.zoey.entity;

/**
 * Created by LSY on 2017/8/18.
 */
public class PageBean {
    private Integer page;
    private Integer pageSize;
    private Integer start;

    public PageBean() {
    }

    public PageBean(Integer page, Integer pageSize) {
        this.page = page;
        this.pageSize = pageSize;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getStart() {
        return (this.page-1)*(this.pageSize);
    }

    public void setStart(Integer start) {
        this.start = start;
    }
}
